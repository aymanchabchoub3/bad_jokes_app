import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  const Answer({super.key, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 5, 15, 45),
      child: Text(
        answer,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 22.5,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
