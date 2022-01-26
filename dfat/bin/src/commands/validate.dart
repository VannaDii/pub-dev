import 'tasks/all.dart';

class ValidateCommand extends DfatCommand {
  @override
  final name = "validate";

  @override
  final description =
      "Validates your solution state and settings for deployment readiness.";

  @override
  String get category => 'General';

  ValidateCommand(Logger logger) : super(logger: logger, tools: []);

  @override
  List<TaskCommand> revealTasks() => [ValidateJsonTask(this, logger)];

  @override
  Future<bool> run() async {
    final blockLogger = logger.headerBlock("Validate");
    useSequence([ValidateJsonTask(this, blockLogger)]);
    final result = await runSequence();
    return blockLogger.close(result);
  }
}
