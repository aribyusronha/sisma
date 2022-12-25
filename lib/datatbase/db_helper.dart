// import 'package:sisma/models/prodi_db.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:sqflite/sqlite_api.dart';
// import 'package:path/path.dart';

// class DBHelper {
//   static final DBHelper _instance = DBHelper._internal();
//   static Database? database;


//   final String tableName= 'prodi';
//   final String id = 'id';
//   final String nmProdi = 'nama_prodi';

//   DBHelper._internal();
//   factory DBHelper() => _instance;

//   Future<Database?> get _db async {
//     if (database != null) {
//       return database;
//     } else {
//       database = await _initDb();

//       return database;
//     }
//   }

//   Future<Database?> _initDb() async {
//     String databasePath = await getDatabasesPath();
//     String path = join(databasePath, 'sisma.db');

//     return await openDatabase(
//       path,
//       version: 1,
//       onCreate: _onCreate,
//     );
//   }

//   Future<void> _onCreate(Database db, int version) async {
//     var sql = 'CREATE TABLE $tableName ($id INTEGER PRIMARY KEY, $nmProdi VARCHAR(255)';        

//     await db.execute(sql);
//   }

//   Future<int?> addProdi(ProdiDb prodi) async {
//     var dbClient = await database;
//     return await dbClient!.insert(
//       tableName,
//       prodi.toMap(),
//     );
//   }

//     Future<List<ProdiDb>> getProdi() async {
//         var dbClient = await database;
//         List<Map> maps = await dbClient!.query(
//         tableName,
//         columns: [id, nmProdi],
//         );
    
//         List<ProdiDb> prodi = [];
//         if (maps.isNotEmpty) {
//         for (int i = 0; i < maps.length; i++) {
//             prodi.add(ProdiDb.fromMap(maps[i]));
//         }
//         }
//         return prodi;
//     }
// }