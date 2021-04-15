import 'package:flutter/material.dart';
import 'package:quizz/screens/home/components/home_button.dart';

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
                HomeButton(text: 'Continuar', onPressed: () {}),
                SizedBox(height: 8),
                HomeButton(text: 'Iniciar', onPressed: () {}),
                SizedBox(height: 8),
                HomeButton(text: 'Selecionar nível', onPressed: () {}),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          child: Image.asset('images/br.png'),
                        ),
                      )
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          child: Image.asset('images/usa.png'),
                        ),
                      )
                    ),
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