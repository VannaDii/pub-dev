import 'package:tint/tint.dart';

import 'base.dart';

class CheckToolsTask extends TaskCommand {
  CheckToolsTask(DfatCommand parent, Logger logger)
      : super(parent, logger, TaskRequirements());

  @override
  String get name => 'check-tools';

  @override
  String get description => 'Checks for each required tool.';

  final inRs = '   ';

  @override
  Future<bool> run() async {
    final List<String> tools = parent.globalTools;

    List<bool> results = [];
    for (var tool in tools) {
      final closer = logger.printFixed('👀 Looking for ${tool.green()}', inRs);
      results.add(closer(Utils.isCommand(tool)));
    }

    final result = results.every((r) => r);
    return result;
  }
}
