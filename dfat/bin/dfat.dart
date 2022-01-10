import 'package:args/command_runner.dart';

import 'src/logger.dart';
import 'src/commands/all.dart';

void main(List<String> args) async {
  final logger = Logger();
  try {
    final runner = CommandRunner<bool>("dfat",
        "Operations and utilities for the DFAT (Dart, Flutter, AWS, Terraform) solution templates.",
        usageLineLength: 120)
      ..addCommand(BuildCommand(logger))
      ..addCommand(CheckCommand(logger))
      ..addCommand(SharedCommand(logger))
      ..addCommand(LambdaCommand(logger))
      ..addCommand(DockerCommand(logger))
      ..addCommand(InstallCommand(logger))
      ..addCommand(AggregateCommand(logger));
    await runner.run(args);
  } on UsageException catch (e) {
    logger.printFailed(e.message);
    logger.printLine(e.usage);
  }
}
