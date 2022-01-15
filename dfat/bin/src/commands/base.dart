import 'package:args/command_runner.dart';
import 'package:meta/meta.dart';

import 'tasks/base.dart';
export '../enums.dart';

abstract class DfatCommand extends Command<bool> {
  DfatCommand({required this.tools, required this.logger});

  final Logger logger;

  final List<String> tools;

  @nonVirtual
  List<TaskCommand> get sequence => _sequence;
  List<TaskCommand> _sequence = [];
  void useSequence(List<TaskCommand> sequence) {
    _sequence = sequence;
  }

  List<DfatCommand> get allCommands =>
      (runner?.commands.values ?? []).whereType<DfatCommand>().toList();

  List<String> get allTools =>
      [...tools, ...sequence.map((e) => e.requirements.tools).expand((e) => e)];

  List<FileRequirement> get allFsPaths =>
      [...sequence.map((e) => e.requirements.files).expand((e) => e)];

  List<String> get globalTools =>
      allCommands.map((e) => e.allTools).expand((e) => e).toSet().toList()
        ..sort();

  List<FileRequirement> get globalFsPaths =>
      allCommands.map((e) => e.allFsPaths).expand((e) => e).toSet().toList()
        ..sort();

  Future<bool> runSequence(
      [Map<String, Map<String, dynamic>> args = const {}]) async {
    bool result = true;
    final _def = <String, dynamic>{};
    for (var task in sequence) {
      if (!result) {
        break;
      } else {
        final ta = (args.containsKey(task.name) ? args[task.name] : _def)!;
        result = await task.runWith(ta) ?? false;
      }
    }
    return result;
  }
}
