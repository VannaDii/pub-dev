import 'package:tint/tint.dart';
import 'package:path/path.dart' as path;
import 'package:json_schema2/json_schema2.dart';

import 'base.dart';
import '../../utils.dart';
import '../../logger.dart';

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
    final blockCloser = logger.header('Tools Check');
    final List<String> tools = parent.globalTools;

    List<bool> results = [];
    for (var tool in tools) {
      final closer = logger.printFixed('🛠 Checking for ${tool.green()}', inRs);
      results.add(closer(Utils.isCommand(tool)));
    }

    final result = results.every((r) => r);
    return blockCloser(result);
  }
}
