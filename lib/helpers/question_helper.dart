import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' show join;

String idColumn = 'id';
String questionTable = 'question';
String option1PT = 'option1pt';
String option2PT = 'option2pt';
String option3PT = 'option3pt';
String option4PT = 'option4pt';
String option1EN = 'option1en';
String option2EN = 'option2en';
String option3EN = 'option3en';
String option4EN = 'option4en';
String correctOption = 'correctOption';
String questionPT = 'questionpt';
String questionEN = 'questionen';

class QuestionHelper {

  QuestionHelper.internal();
  static final QuestionHelper _instance = QuestionHelper.internal();
  factory QuestionHelper() => _instance;

  Database _db;

  Future<Database> get db async {

    if(_db != null) return _db;

    _db = await initDB();
    return _db;

  }

  Future<Database> initDB() async {

    final String databasePath = await getDatabasesPath();
    final String path = join(databasePath, 'database.db');

    return await openDatabase(path, onCreate: (Database db, int version) async {
      await db.execute(
        "CREATE TABLE $questionTable ($idColumn INTEGER PRIMARY KEY, $questionPT TEXT, $questionEN TEXT,"
        "$option1PT TEXT, $option2PT TEXT, $option3PT TEXT, $option4PT TEXT, $option1EN TEXT, $option2EN TEXT,"
        "$option3EN TEXT, $option4EN TEXT, $correctOption INTEGER"
      );

      String questionJson = await rootBundle.loadString('questions/questions.json');
      List<Map<String, dynamic>> questions = jsonDecode(questionJson);

      questions.forEach((question) async {
        await db.insert(questionTable, question);
      });
    });

  }

}