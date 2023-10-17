import 'package:sqflite/sqflite.dart' as sql;

class SQLhelp {
  static Future<sql.Database> createDB() async {
    return sql.openDatabase('mybase.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTable(database);
    });
  }

  static Future<void> createTable(sql.Database database) async{
    await database.execute("""CREATE TABLE mytable(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        cemail TEXT,
        cpassword TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )""");
  }
}
