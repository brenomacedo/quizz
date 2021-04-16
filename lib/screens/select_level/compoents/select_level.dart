import 'package:flutter/material.dart';

class SelectLevel extends StatelessWidget {

  final int level;
  final VoidCallback onPressed;

  SelectLevel({ this.level, this.onPressed });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('$level', style: TextStyle(
        color: Colors.lightBlue,
        fontSize: 25
      )),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
        backgroundColor: MaterialStateProperty.all(Colors.white)
      ),
      onPressed: onPressed,
    );
  }
}