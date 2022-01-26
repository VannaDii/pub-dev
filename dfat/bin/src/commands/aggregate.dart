import 'dart:io';
import 'dart:convert';

import 'package:path/path.dart' as path;
import 'package:collection/collection.dart';

import '../extensions.dart';
import 'tasks/all.dart';

class AggregateCommand extends DfatCommand {
  @override
  final name = "aggregate";

  @override
  final description = "Performs the DFAT deployment aggregation routine.";

  @override
  String get category => 'Granular';

  @override
  List<TaskCommand> revealTasks() => [];

  AggregateCommand(Logger logger) : super(logger: logger, tools: ['git']) {
    var workDir = Directory.current.path;
    var distDir = path.join(workDir, '.dist');

    argParser.addOption(
      'dist',
      abbr: 'd',
      defaultsTo: path.relative(distDir, from: workDir),
      help: "The output path for distribution aggregation.",
    );
  }

  Map<String, dynamic>? _getNamedProvider(
      Map<String, dynamic> config, String name) {
    final provider = config.takeOr<Map<String, dynamic>>(name);
    if (provider != null) {
      final name = provider.takeOr<String>('name');
      final type = provider.takeOr<String>('type');
      final issuer = provider.takeOr<String>("issuer");
      final scopes = provider.takeOr<List<dynamic>>("scopes");
      final mapping = provider.takeOr<Map<String, dynamic>>('mapping');
      if (scopes != null) {
        provider['authorize_scopes'] =
            scopes.join(type == 'Facebook' ? ', ' : ' ');
      }
      if (issuer != null) {
        provider['oidc_issuer'] = issuer;
      }
      return {
        'name': name,
        'type': type,
        'mapping': mapping,
        'details': provider,
      };
    }
    return null;
  }

  Iterable<Map<String, dynamic>>? _getProviderSet(
      Map<String, dynamic> config, String name) sync* {
    final providers = config
        .takeOr<List<dynamic>>(name)
        ?.map((e) => e as Map<String, dynamic>)
        .toList();
    if (providers != null && providers.isNotEmpty) {
      for (var provider in providers) {
        final name = provider.takeOr<String>('name');
        final type = provider.takeOr<String>('type');
        final issuer = provider.takeOr<String>("issuer");
        final metaDataUrl = provider.takeOr('metadata_url');
        final scopes = provider.takeOr<List<dynamic>>("scopes");
        final signout = provider.takeOr<String>('idp_sign_out_url');
        final mapping = provider.takeOr<Map<String, dynamic>>('mapping');
        if (scopes != null) {
          provider['authorize_scopes'] = scopes.join(' ');
        }
        if (issuer != null) {
          provider['oidc_issuer'] = issuer;
        }
        if (metaDataUrl != null) {
          provider['MetadataURL'] = metaDataUrl;
        }
        if (signout != null) {
          provider['IDPSignout'] = signout;
        }
        yield {
          'name': name,
          'type': type,
          'mapping': mapping,
          'details': provider,
        };
      }
    }
  }

  Map<String, dynamic> _transformSharedIaC(Map<String, dynamic> sharedIaC) {
    List<dynamic> providers = [];
    List<String> setProviders = ['oidc', 'saml'];
    List<String> namedProviders = ['facebook', 'google', 'amazon', 'apple'];
    sharedIaC.remove(r"$schema");
    final cognito = sharedIaC.takeOr<Map<String, dynamic>>('cognito');
    if (cognito != null) {
      sharedIaC["cognito_css_path"] = cognito.takeOr<String>('css_path');
      sharedIaC["cognito_logo_path"] = cognito.takeOr<String>('logo_path');
      final idPs = cognito.takeOr<Map<String, dynamic>>('identity_providers');
      if (idPs != null) {
        for (var name in namedProviders) {
          final provider = _getNamedProvider(idPs, name);
          if (provider != null) providers.add(provider);
        }
        for (var name in setProviders) {
          final providerSet = _getProviderSet(idPs, name);
          if (providerSet != null) providers.addAll(providerSet.toList());
        }
        sharedIaC['identity_providers'] = providers;
      }
    }
    return sharedIaC;
  }

  @override
  Future<bool> run() async {
    final blockLogger = logger.headerBlock("Aggregate");

    final args = argResults!;
    final String distDir = Utils.getFinalDir(args['dist']);
    final String iacDir = Utils.pathFromRoot(KnownPaths.iac, rootDir);

    if (!Directory(rootDir).existsSync()) throw ArgumentError.notNull('input');
    if (Directory(distDir).existsSync()) {
      Directory(distDir).deleteSync(recursive: true);
    }
    Directory(distDir).createSync(recursive: true);

    final zips =
        await Utils.findFiles(subPath: 'lambdas', matcher: RegExps.lambdaZips)
            .toList();
    blockLogger.printLine(
        "   📥 Received ${zips.map((e) => path.basename(e.path).green()).join(', ')}");

    for (var zipFile in zips) {
      blockLogger
          .printFixed("   🚀 Copying ${path.basename(zipFile.path).green()}");
      zipFile.copySync(path.join(distDir, path.basename(zipFile.path)));
      blockLogger.printDone();
    }

    final iacFiles =
        await Utils.findFiles(matcher: RegExps.fileIaCJson).toList();
    final sharedIacFile =
        iacFiles.firstWhereOrNull((f) => f.path.contains('/shared/'));
    Map<String, dynamic> sharedIaC = sharedIacFile != null
        ? jsonDecode(sharedIacFile.readAsStringSync())
        : <String, dynamic>{};
    if (sharedIacFile != null) {
      iacFiles.remove(sharedIacFile);
      sharedIaC = _transformSharedIaC(sharedIaC);
    }

    final tfVarsMap = <String, dynamic>{
      ...sharedIaC,
      "lambda_configs": <String, dynamic>{},
    };
    blockLogger.printFixed("   🔩 Merging IaC definitions");
    for (var jsonFile in iacFiles) {
      final isLambda = jsonFile.path.contains('/lambdas/');
      if (!isLambda) continue; // We're only here for lambda configs

      final name = path.basename(jsonFile.parent.path);
      Map<String, dynamic> iac = jsonDecode(jsonFile.readAsStringSync());
      iac.remove(r"$schema");
      tfVarsMap['lambda_configs'][name] = iac;
    }
    File(path.join(distDir, 'iac.auto.tfvars.json'))
        .writeAsStringSync(jsonEncode(tfVarsMap));

    // If there's an IaC directory, put a copy there for convenience.
    if (Directory(iacDir).existsSync()) {
      File(path.join(iacDir, 'iac.auto.tfvars.json'))
          .writeAsStringSync(jsonEncode(tfVarsMap));
    }

    blockLogger.printDone();

    final gitCloser = blockLogger.printFixed("   📝 Noting IaC Hash");
    final gitHash = Utils.getGitHash(rootDir);
    final gitResult = gitHash != null;
    if (gitResult) {
      File(path.join(distDir, 'iac.hash')).writeAsStringSync(gitHash);
    }
    gitCloser(gitResult);

    return blockLogger.close(true);
  }
}
