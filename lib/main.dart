import 'package:flutter/material.dart';
import 'package:quizz/screens/home/home.dart';

void main() {
  runApp(MyApp());
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