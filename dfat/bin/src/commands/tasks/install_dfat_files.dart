import 'dart:io';

import 'base.dart';

class InstallDfatFilesTask extends TaskCommand {
  InstallDfatFilesTask(DfatCommand parent, Logger logger)
      : super(parent, logger, TaskRequirements());

  static String taskName = 'install-dfat-files';

  @override
  String get name => InstallDfatFilesTask.taskName;

  @override
  String get description =>
      'Installs folders and files required by other dfat commands.';

  final inRs = '   ';

  bool writeSchemaFiles(String rootDir) {
    String? reason;
    bool result = true;
    final closer = logger.printFixed('📝 Writing schema files', inRs);
    final schemasDir = Utils.pathFromRoot(KnownPaths.schemas, rootDir);

    try {
      if (!Directory(schemasDir).existsSync()) {
        Directory(schemasDir).createSync(recursive: true);
      }
      Assets.schemaLambda.writeTo();
      Assets.schemaShared.writeTo();
    } on FileSystemException catch (e) {
      result = false;
      reason = e.message;
    }

    return closer(result, reason);
  }

  bool writeDockerFiles(String rootDir) {
    String? reason;
    bool result = true;
    final closer = logger.printFixed('📝 Writing docker files', inRs);

    try {
      Assets.dockerAmznL2.writeTo();
      Assets.dockerRunScript.writeTo(chmod: '+x');
    } on FileSystemException catch (e) {
      result = false;
      reason = e.message;
    }

    return closer(result, reason);
  }

  @override
  Future<bool> run() async {
    List<bool> results = [writeDockerFiles(rootDir), writeSchemaFiles(rootDir)];
    final result = results.every((r) => r);
    return result;
  }
}
