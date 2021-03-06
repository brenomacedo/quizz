import 'package:flutter/material.dart';
import 'package:quizz/screens/home/components/home_button.dart';
import 'package:quizz/screens/home/components/language_button.dart';
import 'package:quizz/screens/question/question_screen.dart';
import 'package:quizz/screens/select_level/select_level_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg.png'),
              fit: BoxFit.cover
            )
          ),
        ),
        Padding(
          padding: EdgeInsets.all(12),
          child: Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('QuizZ', style: TextStyle(
                  fontSize: 56,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ), textAlign: TextAlign.center),
                SizedBox(height: 16),
                HomeButton(text: 'Continuar', onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => QuestionScreen())
                  );
                }),
                SizedBox(height: 8),
                HomeButton(text: 'Iniciar', onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => QuestionScreen())
                  );
                }),
                SizedBox(height: 8),
                HomeButton(text: 'Selecionar nível', onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SelectLevelScreen())
                  );
                }),
                SizedBox(height: 16),
                Row(
                  children: [
                    LanguageButton(onPressed: () {}, image: Image.asset('images/br.png')),
                    LanguageButton(onPressed: () {}, image: Image.asset('images/usa.png'))
                  ],
                )
              ],
            ),
            backgroundColor: Colors.transparent,
          ),
        )
      ],
    );
  }
}