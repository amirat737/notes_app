import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;
  final int maxLines;
  final double fontSize;

  const TextFieldWidget({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.fontSize = 25,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: cyan,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: fontSize, color: grey8),
        border: InputBorder.none,
      ),
    );
  }
}
