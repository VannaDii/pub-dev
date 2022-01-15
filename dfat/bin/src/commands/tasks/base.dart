import 'dart:io';
import 'dart:async';

import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:args/command_runner.dart';
import 'package:path/path.dart' show basename;

import '../base.dart';
import '../../utils.dart';
import '../../assets/all.dart';

export '../base.dart';
export '../../assets/all.dart';
export '../../utils.dart';
export '../../logger.dart';
export 'package:tint/tint.dart';

/// A task command meant to be sequenced by other commands
abstract class TaskCommand extends Command<bool> {
  TaskCommand(this.parent, this.logger, this.requirements);

  @override
  bool get hidden => true;

  /// The logger instance for this task
  final Logger logger;

  /// This tasks execution requirements.
  final TaskRequirements requirements;

  /// Gets the users home directory
  String? get userDir =>
      Platform.environment['HOME'] ?? Platform.environment['USERPROFILE'];

  /// Get the root directory from the `root` arg, or [Directory.current] if not present.
  String get rootDir =>
      args.containsKey('root') ? args['root'] : Directory.current.path;

  /// Get the target directory from the `target` arg, or [rootDir] if not present.
  String get targetDir => args.containsKey('target') ? args['target'] : rootDir;

  @override
  final DfatCommand parent;

  /// Gets the arguments available to this task from the parent command.
  Map<String, dynamic> get args => _args;
  Map<String, dynamic> _args = const {};

  /// Runs this task with the given [args], or the [parent] args if none are provided.
  FutureOr<bool>? runWith([Map<String, dynamic>? args]) {
    final pArgs = parent.argResults!;
    _args = args ??
        Map<String, dynamic>.fromEntries(pArgs.options
            .map<MapEntry<String, dynamic>>((e) => MapEntry(e, pArgs[e])));
    return run();
  }
}

/// Describes a task's execution requirements
@immutable
class TaskRequirements {
  const TaskRequirements({this.tools = const [], this.files = const []});

  /// Any command-line tools required by this task, ideally none.
  final List<String> tools;

  /// The files required by this task, with paths relative to the workspace root.
  final List<FileRequirement> files;
}

/// Represents a file requirement
@immutable
class FileRequirement extends Equatable implements Comparable {
  const FileRequirement(this.path, [this.creator]);

  final String path;
  final FileCreator? creator;

  bool get canCreate => creator != null;

  @override
  List<Object?> get props => [path];

  @override
  bool operator ==(Object other) {
    if (other is FileRequirement) {
      return path == other.path;
    }
    return false;
  }

  @override
  int get hashCode => path.hashCode;

  @override
  int compareTo(other) {
    if (other is FileRequirement) {
      return basename(path).compareTo(basename(other.path));
    }
    return 0;
  }
}

/// Represents an asset file requirement
class AssetRequirement extends FileRequirement {
  AssetRequirement(AssetString asset) : super(asset.targetPath, asset.writeTo);
}
