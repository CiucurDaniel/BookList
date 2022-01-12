import 'dart:async';
import 'dart:io'; // for Directory
import 'package:path/path.dart'; // for join method
import 'package:path_provider/path_provider.dart'; // for getApplicationDirectory cross-platform
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  DatabaseHelper._();

  static final DatabaseHelper instance = DatabaseHelper._();

  static Database? _db;

  Future<Database> _getDb() async {
    return _db ??= await _initDb();
  }

  Future<Database> _initDb() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'books.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE table books(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT NOT NULL,
      author TEXT NOT NULL,
      readed TEXT NOT NULL,
      pages NUMBER NOT NULL
    )
    ''');
  }
}
