import 'package:args/command_runner.dart';

import 'commands/show.dart';
import 'commands/convert.dart';

void main(List<String> args) {
  CommandRunner("cobertura",
      "Converts LCOV to Cobertura format; the ideal format for GitHub and Azure DevOps.")
    ..addCommand(ConvertCommand())
    ..addCommand(ShowCommand())
    ..run(args);
}
