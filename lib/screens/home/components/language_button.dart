import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {

  final Image image;
  final VoidCallback onPressed;

  LanguageButton({ this.image, this.onPressed });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Container(
            child: image,
          ),
        ),
        onTap: () {
        },
      )
    );
  }
}