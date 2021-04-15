import 'package:flutter/material.dart';

class Option extends StatelessWidget {

  final VoidCallback onPressed;

  Option({ this.onPressed });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Resposta', style: TextStyle(
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