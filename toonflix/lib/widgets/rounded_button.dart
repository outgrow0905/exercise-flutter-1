import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const RoundedButton.create(
      {super.key,
      required this.text,
      required this.backgroundColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Text(text,
            style: TextStyle(
              color: textColor,
              fontSize: 22,
              fontWeight: FontWeight.w300,
            )),
      ),
    );
  }
}
