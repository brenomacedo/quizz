import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  HomeButton({ this.text, this.onPressed });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if(states.contains(MaterialState.disabled)) return Colors.grey;
            return Colors.white;
          }),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if(states.contains(MaterialState.disabled)) return Colors.white;
            return Colors.lightBlue;
          })
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyle(
          fontSize: 24
        )),
      ),
      height: 48
    );
  }
}