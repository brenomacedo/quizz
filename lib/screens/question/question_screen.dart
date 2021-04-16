import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:quizz/screens/question/components/option.dart';
import 'package:quizz/stores/question_store.dart';


class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  final QuestionStore questionStore = GetIt.I<QuestionStore>();

  final GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: key,
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
            child: Observer(
              builder: (context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(questionStore.selectedLevel.qquestionPT, style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                    ), textAlign: TextAlign.center),
                    SizedBox(height: 16),
                    Option(answer: questionStore.selectedLevel.qoption1PT ,onPressed: () {
                      verifyAnswer(1);
                    }),
                    Option(answer: questionStore.selectedLevel.qoption2PT ,onPressed: () {
                      verifyAnswer(2);
                    }),
                    Option(answer: questionStore.selectedLevel.qoption3PT ,onPressed: () {
                      verifyAnswer(3);
                    }),
                    Option(answer: questionStore.selectedLevel.qoption4PT ,onPressed: () {
                      verifyAnswer(4);
                    }),
                  ],
                );
              },
            )
          ),
          backgroundColor: Colors.transparent,
        )
      ],
    );
  }

  void verifyAnswer(int option) async {
    if(questionStore.selectedLevel.qcorrectOption == option) {
      await showDialog(context: key.currentContext, builder: (context) {
        return Dialog(
          child: Card(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Acertaste!')
                ],
              ),
            ),
          ),
        );
      });

      if(questionStore.selectedLevelId == questionStore.questionCount) {
        return Navigator.of(context).pop();
      }

      questionStore.setSelectedLevelId(questionStore.selectedLevelId + 1);
    }
  }
}