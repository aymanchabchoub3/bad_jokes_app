import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function(String) changeIndex;

  const Button({super.key, required this.changeIndex});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: FloatingActionButton(
            onPressed: () {
              changeIndex("previous");
            },
            backgroundColor: Colors.orange,
            child: const Icon(
              Icons.arrow_left_rounded,
              size: 60,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: FloatingActionButton(
            onPressed: () {
              changeIndex("next");
            },
            child: const Icon(
              Icons.arrow_right_rounded,
              size: 60,
            ),
          ),
        ),
      ],
    );
  }
}
