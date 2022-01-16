import 'package:args/command_runner.dart';
import 'package:meta/meta.dart';

import 'tasks/base.dart';
export '../enums.dart';

typedef ArgsProvider = Map<String, dynamic>? Function(String taskName);

abstract class DfatCommand extends Command<bool> {
  DfatCommand({required this.tools, required this.logger});

  /// A logger instance
  final Logger logger;

  /// The external tools (commands and exes) required by the command
  final List<String> tools;

  /// The sequence of tasks run by this command
  @nonVirtual
  List<TaskCommand> get sequence => _sequence;
  List<TaskCommand> _sequence = [];
  void useSequence(List<TaskCommand> sequence) {
    _sequence = sequence;
  }

  /// All commands known to the [runner]
  List<DfatCommand> get allCommands =>
      (runner?.commands.values ?? []).whereType<DfatCommand>().toList();

  /// All [tools] from this commands [sequence]
  List<String> get allTools =>
      [...tools, ...sequence.map((e) => e.requirements.tools).expand((e) => e)];

  /// All [TaskRequirements.files] from this commands [sequence]
  List<FileRequirement> get allFsPaths =>
      [...sequence.map((e) => e.requirements.files).expand((e) => e)];

  /// A sorted, distinct list of [allTools] from [allCommands]
  List<String> get globalTools =>
      allCommands.map((e) => e.allTools).expand((e) => e).toSet().toList()
        ..sort();

  /// A sorted, distinct list of [allFsPaths] from [allCommands]
  List<FileRequirement> get globalFsPaths =>
      allCommands.map((e) => e.allFsPaths).expand((e) => e).toSet().toList()
        ..sort();

  /// Executes this commands [sequence] with the mapped [args] or empty args
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

  /// Executes this commands [sequence] invoking the provider for each task's args.
  Future<bool> runSequenceSame(ArgsProvider provider) async {
    bool result = true;
    final _def = <String, dynamic>{};
    for (var task in sequence) {
      if (!result) {
        break;
      } else {
        final ta = (provider(task.name) ?? _def);
        result = await task.runWith(ta) ?? false;
      }
    }
    return result;
  }
}
