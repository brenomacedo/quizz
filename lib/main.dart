import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:quizz/screens/home/home.dart';
import 'package:quizz/stores/question_store.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocators();
  runApp(MyApp());
}

void setupLocators() {
  GetIt.I.registerSingleton(QuestionStore());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuizZ',
      home: HomeScreen(),
    );
  }

}