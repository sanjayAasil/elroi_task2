// import 'package:elroi_task2/model/student_model.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
//
// class Db {
//   static final Db _instance = Db._();
//
//   Db._();
//
//   factory Db() => _instance;
//
//   static Database? _database;
//
//   static const String _db = '_db';
//
//   Future<Database> _initDb() async {
//     String path = join(await getDatabasesPath(), _db);
//
//     return openDatabase(
//       path,
//       onCreate: (db, version) {
//         return db.execute('''
//           CREATE TABLE IF NOT EXISTS students(
//           id INT PRIMARY KEY AUTOINCREMENT,
//           name TEXT,
//           fatherName TEXT,
//           dateOfBirth TEXT,
//           gender TEXT,
//           country TEXT,
//           email TEXT,
//           mobileNumber TEXT,
//           hobbies TEXT,
//           imagePath TEXT ) ''');
//       },
//       version: 1,
//     );
//   }
//
//   Future<Database> get database async {
//     if (_database != null) {
//       return _database!;
//     } else {
//       _database = await _initDb();
//       return _database!;
//     }
//   }
//
//   Future<void> insertStudent(Map<String, dynamic> data) async {
//     final db = await database;
//     await db.insert('students', data);
//   }
//
//   Future<List<StudentModel>> getStudents() async {
//     final db = await database;
//     List<Map<String, dynamic>> data = await db.query('students');
//     return data.map((e) => StudentModel(e)).toList();
//   }
//
//   Future<void> updateStudent(StudentModel student) async {
//     final db = await database;
//
//     await db.update(
//       'students',
//       student.json,
//       where: 'id=?',
//       whereArgs: [
//         student.id,
//       ],
//     );
//   }
//
//   Future<void> deleteStudent(int id) async {
//     final db = await database;
//     await db.delete(
//       'students',
//       where: 'id=?',
//       whereArgs: [
//         id,
//       ],
//     );
//   }
// }
