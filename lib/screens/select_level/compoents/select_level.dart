import 'package:flutter/material.dart';

class SelectLevel extends StatelessWidget {

  final int level;

  SelectLevel({ this.level });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('1', style: TextStyle(
        color: Colors.lightBlue,
        fontSize: 25
      )),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
        backgroundColor: MaterialStateProperty.all(Colors.white)
      ),
      onPressed: () {},
    );
  }
}