import 'package:flutter/material.dart';
import 'package:quizz/screens/question/components/option.dart';

class QuestionScreen extends StatelessWidget {
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
        Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {},
                )
              ],
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Pergunta: quanto é 4+4?', style: TextStyle(
                  color: Colors.white,
                  fontSize: 24
                ), textAlign: TextAlign.center),
                SizedBox(height: 16),
                Option(onPressed: () {
                  print('hello');
                }),
                Option(onPressed: () {}),
                Option(onPressed: () {}),
                Option(onPressed: () {}),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
        )
      ],
    );
  }
}