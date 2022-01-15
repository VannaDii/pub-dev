import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:path/path.dart' as path;

import 'base.dart';

class ZipArchiveTask extends TaskCommand {
  ZipArchiveTask(DfatCommand parent, Logger logger)
      : super(parent, logger, TaskRequirements());

  static String taskName = 'zip-archive';

  @override
  String get name => ZipArchiveTask.taskName;

  @override
  String get description =>
      'Compresses file system entities into a zip archive.';

  final inRs = '   ';

  @override
  Future<bool> run() async {
    bool result = true;
    final inputPath = args['input'];
    final outZipPath = args['output'];
    final ind = args['indent'] ?? inRs;
    final zipName = path.basename(outZipPath);
    final baseName = path.basename(inputPath);
    final isDir = FileSystemEntity.isDirectorySync(inputPath);
    final closer = logger.printFixed(
        '📦 Packing ${baseName.green()} → ${zipName.green()}', ind);

    try {
      final zip = ZipFileEncoder()..create(outZipPath);
      if (isDir) {
        zip.addDirectory(inputPath, includeDirName: false);
      } else {
        zip.addFile(File(inputPath));
      }
      zip.close();
    } catch (_) {
      result = false;
    }

    return closer(result);
  }
}
