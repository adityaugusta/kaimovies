import 'package:file/file.dart';
import 'package:file/local.dart';

// ignore: implementation_imports, package doesn't provide in main file
import 'package:flutter_cache_manager/src/storage/file_system/file_system.dart'
    as cache;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class IOFileSystem implements cache.FileSystem {
  IOFileSystem(String key) : _fileDir = createDirectory(key);

  final Future<Directory> _fileDir;

  static Future<Directory> createDirectory(String key) async {
    final baseDir = await getTemporaryDirectory();
    final path = p.join(baseDir.path, key);

    const fs = LocalFileSystem();
    final directory = fs.directory((path));
    await directory.create(recursive: true);
    return directory;
  }

  @override
  Future<File> createFile(String name) async {
    return (await _fileDir).childFile(name);
  }
}
