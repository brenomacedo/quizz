import 'package:flutter/material.dart';

class Option extends StatelessWidget {

  final VoidCallback onPressed;
  final String answer;

  Option({ this.onPressed, this.answer });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(answer, style: TextStyle(
        color: Colors.lightBlue,
        fontSize: 18
      )),
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white)
      ),
    );
  }
}