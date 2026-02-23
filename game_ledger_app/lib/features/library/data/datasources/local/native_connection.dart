import 'dart:ffi';
import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqlite3/open.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

LazyDatabase openConnection() {
  return LazyDatabase(() async {
    // Tell Flutter where to find the SQLite libraries on Windows/Linux
    await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    
    if (Platform.isWindows || Platform.isLinux) {
       open.overrideFor(OperatingSystem.windows, _openOnWindows);
       open.overrideFor(OperatingSystem.linux, _openOnLinux);
    }

    // Find a safe folder to store the .sqlite file
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'game_ledger.sqlite'));

    // Open the database
    return NativeDatabase.createInBackground(file);
  });
}

DynamicLibrary _openOnWindows() {
  final scriptDir = File(Platform.script.toFilePath()).parent;
  final libraryNextToScript = File(p.join(scriptDir.path, 'sqlite3.dll'));
  
  if (libraryNextToScript.existsSync()) {
    return DynamicLibrary.open(libraryNextToScript.path);
  }
  return DynamicLibrary.open('sqlite3.dll');
}

DynamicLibrary _openOnLinux() {
  final scriptDir = File(Platform.script.toFilePath()).parent;
  final libraryNextToScript = File(p.join(scriptDir.path, 'libsqlite3.so'));
  
  if (libraryNextToScript.existsSync()) {
    return DynamicLibrary.open(libraryNextToScript.path);
  }
  return DynamicLibrary.open('libsqlite3.so');
}