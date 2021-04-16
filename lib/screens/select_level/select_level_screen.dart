import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:quizz/screens/question/question_screen.dart';
import 'package:quizz/screens/select_level/compoents/select_level.dart';
import 'package:quizz/stores/question_store.dart';

class SelectLevelScreen extends StatelessWidget {

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
            title: Text('Select a level'),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(16, 48, 16, 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Observer(
                    builder: (context) {
                      return GridView(
                        children: questionStore.questions.map((question) {
                          return SelectLevel(level: question.id, onPressed: () {
                            questionStore.setSelectedLevelId(question.id);
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => QuestionScreen())
                            );
                          });
                        }).toList(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1,
                          crossAxisCount: 4,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8
                        ),
                      );
                    },
                  )
                )
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
        ),

      ],
    );
  }
}