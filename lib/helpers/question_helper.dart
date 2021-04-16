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

    return await openDatabase(path, version: 1, onCreate: (Database db, int version) async {
      await db.execute(
        "CREATE TABLE $questionTable ($idColumn INTEGER PRIMARY KEY, $questionPT TEXT, $questionEN TEXT,"
        "$option1PT TEXT, $option2PT TEXT, $option3PT TEXT, $option4PT TEXT, $option1EN TEXT, $option2EN TEXT,"
        "$option3EN TEXT, $option4EN TEXT, $correctOption INTEGER)"
      );

      String questionJson = await rootBundle.loadString('questions/questions.json');
      List questions = jsonDecode(questionJson);

      questions.forEach((question) async {
        await db.insert(questionTable, question);
      });
    });

  }

  Future<List<Question>> getQuestions() async {
    Database dbQuestion = await db;
    List<Map> questionsList = await dbQuestion.query(questionTable);

    List<Question> questions = questionsList.map((map) => Question.fromMap(map)).toList();

    return questions;
  }

}

class Question {

  int id;
  String qoption1PT;
  String qoption2PT;
  String qoption3PT;
  String qoption4PT;
  String qoption1EN;
  String qoption2EN;
  String qoption3EN;
  String qoption4EN;
  String qquestionPT;
  String qquestionEN;
  int qcorrectOption;

  Question.fromMap(Map<String, dynamic> question) {

    id = question[idColumn];
    qoption1PT = question[option1PT];
    qoption2PT = question[option2PT];
    qoption3PT = question[option3PT];
    qoption4PT = question[option4PT];
    qoption1EN = question[option1EN];
    qoption2EN = question[option2EN];
    qoption3EN = question[option3EN];
    qoption4EN = question[option4EN];
    qquestionPT = question[questionPT];
    qquestionEN = question[questionEN];
    qcorrectOption = question[correctOption];

  }

  @override
  String toString() {
    print('$id - $qoption1PT');
    return super.toString();
  }

}