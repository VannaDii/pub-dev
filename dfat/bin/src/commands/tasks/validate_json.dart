import 'package:tint/tint.dart';
import 'package:path/path.dart' as path;
import 'package:json_schema2/json_schema2.dart';

import 'base.dart';

class ValidateJsonTask extends TaskCommand {
  ValidateJsonTask(DfatCommand parent, Logger logger)
      : super(
            parent,
            logger,
            TaskRequirements(files: [
              AssetRequirement(Assets.schemaLambda),
              AssetRequirement(Assets.schemaShared),
            ]));

  @override
  String get name => 'validate-json';

  @override
  String get description =>
      'Validates JSON files against their schemas, yielding any errors';

  final inBl = '   ';
  final inRs = '     ';

  Future<bool> _validateSharedIaC() async {
    final blockCloser =
        logger.printBlock("Validating ${'shared'.green()}", inBl);
    final schemaPath = '.dfat/schemas/iac.shared.schema.json';
    final sharedSchema = Utils.readSchemaFile(schemaPath);
    final sharedFile =
        await Utils.findFiles(subPath: 'shared', matcher: RegExps.fileIaCJson)
            .first;
    final sharedFileName = path.join(
        path.dirname(sharedFile.path), path.basename(sharedFile.path));
    final sharedJson =
        Utils.readFile(file: sharedFile, parser: FileParsers.jsonParser);
    final sharedErrors = sharedSchema.validateWithErrors(sharedJson);
    final result = sharedErrors.isEmpty;
    if (!result) {
      for (var error in sharedErrors) {
        logger.printFailed(
            '$sharedFileName → ${error.message} @ ${error.instancePath}', inRs);
      }
    } else {
      logger.printFixed(path.relative(sharedFile.path), inRs)(result);
    }
    return blockCloser(result);
  }

  Future<bool> _validateLambdaIaC() async {
    final blockCloser =
        logger.printBlock("Validating ${'lambdas'.green()}", inBl);
    final schemaPath = '.dfat/schemas/iac.lambda.schema.json';
    final lambdaSchema = Utils.readSchemaFile(schemaPath);
    final Map<String, List<ValidationError>> allErrors = {};

    await Utils.findFiles(subPath: 'lambdas', matcher: RegExps.fileIaCJson)
        .listen((file) {
      final fileName = path.dirname(file.path);
      final json = Utils.readFile(file: file, parser: FileParsers.jsonParser);
      final errors = lambdaSchema.validateWithErrors(json);
      allErrors[fileName] = errors;
    }).asFuture();

    final result = allErrors.entries.every((e) => e.value.isEmpty);
    for (var error in allErrors.entries) {
      if (error.value.isNotEmpty) {
        final closer = logger.printBlock(error.key, inBl);
        for (var e in error.value) {
          logger.printFailed("${e.message} → ${e.instancePath}", inRs);
        }
        closer(false);
      } else {
        logger.printFixed(path.relative(error.key), inRs)(result);
      }
    }

    return blockCloser(result);
  }

  @override
  Future<bool> run() async {
    final resultShared = await _validateSharedIaC();
    logger.printLine();
    final resultLambdas = await _validateLambdaIaC();

    return (resultShared && resultLambdas);
  }
}
