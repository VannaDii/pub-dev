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

  Future<bool> _validateSharedIaC() async {
    final closer = logger.printFixed("🧐 ${'shared'.green()} schema", inBl);
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

    final result = closer(sharedErrors.isEmpty);
    if (!result) {
      for (var error in sharedErrors) {
        logger.printFailed(
            '${path.relative(sharedFileName).bold()} → '
            '${error.message.underline()} @ '
            '${error.instancePath?.yellow()}',
            inBl);
      }
      logger.printLine();
    }

    return result;
  }

  Future<bool> _validateLambdaIaC() async {
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
      final lambdaName = path.relative(error.key);
      logger.printFixed(
          "🧐 ${lambdaName.green()} schema", inBl)(error.value.isEmpty);
      if (error.value.isNotEmpty) {
        for (var e in error.value) {
          logger.printFailed(
              '${'$lambdaName/iac.json'.bold()} → '
              '${e.message.underline()} @ '
              '${e.instancePath?.yellow()}',
              inBl);
        }
        logger.printLine();
      }
    }

    return result;
  }

  Future<bool> _validateAPIRoutes() async {
    final closer =
        logger.printFixed("🚏 x-check ${'api routes'.green()}", inBl);
    final Map<String, List<String>> routesMap = {};
    await Utils.findFiles(subPath: 'lambdas', matcher: RegExps.fileIaCJson)
        .listen((file) {
      final fileName = path.relative(file.path);
      final json = Utils.readFile(file: file, parser: FileParsers.jsonParser);
      final routes = (json["routes"] as List<dynamic>)
          .map((e) => Map<String, String>.from(e));
      for (var route in routes) {
        final key = route.values.join(' ');
        routesMap[key] = routesMap[key] ?? List.empty(growable: true);
        routesMap[key]!.add(fileName);
      }
    }).asFuture();

    // Any route list greater than one means a conflict
    final errorMap =
        Map.fromEntries(routesMap.entries.where((e) => e.value.length > 1));
    final result = closer(errorMap.isEmpty);
    if (!result) {
      for (var error in errorMap.entries) {
        final routeName = path.relative(error.key);
        logger.printFailed(
            '${routeName.bold()} → '
            '${error.value.map((e) => e.yellow()).join(' ↔ ')}',
            inBl + inBl);
      }
      logger.printLine();
    }

    return result;
  }

  @override
  Future<bool> run() async {
    final resultShared = await _validateSharedIaC();
    final resultLambdas = await _validateLambdaIaC();
    final resultRoutes = await _validateAPIRoutes();
    return (resultShared && resultLambdas && resultRoutes);
  }
}
