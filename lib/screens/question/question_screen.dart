import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:quizz/screens/question/components/option.dart';
import 'package:quizz/stores/question_store.dart';

class QuestionScreen extends StatelessWidget {

  final QuestionStore questionStore = GetIt.I<QuestionStore>();

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
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(questionStore.selectedLevel.qquestionPT, style: TextStyle(
                  color: Colors.white,
                  fontSize: 24
                ), textAlign: TextAlign.center),
                SizedBox(height: 16),
                Option(answer: questionStore.selectedLevel.qoption1PT ,onPressed: () {}),
                Option(answer: questionStore.selectedLevel.qoption2PT ,onPressed: () {}),
                Option(answer: questionStore.selectedLevel.qoption3PT ,onPressed: () {}),
                Option(answer: questionStore.selectedLevel.qoption4PT ,onPressed: () {}),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
        )
      ],
    );
  }
}