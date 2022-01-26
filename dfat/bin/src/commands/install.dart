import 'tasks/all.dart';

class InstallCommand extends DfatCommand {
  @override
  final name = "install";

  @override
  final description =
      "Installs the required Dockerfile, schema files, and updates the IaC JSON files to use the appropriate schemas.";

  @override
  String get category => 'General';

  InstallCommand(Logger logger) : super(logger: logger, tools: []);

  @override
  List<TaskCommand> revealTasks() => [
        InstallDfatFilesTask(this, logger),
        UpdateSchemasTask(this, logger),
      ];

  @override
  Future<bool> run() async {
    final blockLogger = logger.headerBlock("Install");
    useSequence([
      InstallDfatFilesTask(this, blockLogger),
      UpdateSchemasTask(this, blockLogger),
    ]);
    final result = await runSequence();

    return blockLogger.close(result);
  }
}
