import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  String text1;
  String text2;
  void Function() onPressed;
  SignUpText(this.text1, this.text2,
      this.onPressed
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(color: Colors.grey[400]),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            text2,
            style: TextStyle(color: Colors.blueAccent[700]),
          ),
        ),
      ],
    );
  }
}