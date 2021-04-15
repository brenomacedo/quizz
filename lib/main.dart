import 'package:flutter/material.dart';
import 'package:quizz/screens/select_level/select_level_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuizZ',
      home: SelectLevelScreen(),
    );
  }

}