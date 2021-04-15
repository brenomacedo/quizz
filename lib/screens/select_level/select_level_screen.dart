import 'package:flutter/material.dart';
import 'package:quizz/screens/select_level/compoents/select_level.dart';

class SelectLevelScreen extends StatelessWidget {
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
          body: Padding(
            padding: EdgeInsets.fromLTRB(16, 48, 16, 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Select a level', style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ), textAlign: TextAlign.center),
                Expanded(
                  child: GridView(
                    children: [
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                      SelectLevel(level: 1),
                    ],
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1,
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8
                    ),
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