import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //database creation
  static Future<sql.Database> createDB() async {
    return sql.openDatabase('mycontacts.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTable(database);
    });
  }

  static Future<void> createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE mytable(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        cname TEXT,
        cnumber TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )""");
  }

  //save name and phone number to contacts table
  static Future<int> create_contact(String name, String phonenum) async {
    final db = await SQLHelper.createDB(); //open database
    final data = {'cname': name, 'cnumber': phonenum};
    //insert to a particular table with values as map
    final id = await db.insert('mytable', data); //data is created as a variable
    return id;
  }

  static Future<List<Map<String, dynamic>>> readcontacts() async {
    final db = await SQLHelper.createDB();
    //read all the values from db
    return db.query('contacts', orderBy: 'id');
  }

  static Future<int> updatecontact(int id, String name, String phone) async {
    final db = await SQLHelper.createDB();
    final newdata = {
      'cname': name,
      'cnumber': phone,
      'createdAt': DateTime.now().toString()
    };
    final upid =
        await db.update('mytable', newdata, where: 'id=?', whereArgs: [id]);
    return upid;
  }

  static deletecontact(int id) async{
    final db=await SQLHelper.createDB();
    try{
      await db.delete('mytable',where: 'id=?',whereArgs: [id]);
    }catch(e){
      throw Exception();
    }
  }
}
