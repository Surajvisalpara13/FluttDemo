import 'package:flutter/material.dart';

class CommonText extends StatefulWidget {
  final String text;
  const CommonText({super.key, required this.text});

  @override
  State<CommonText> createState() => _CommonTextState();
}

class _CommonTextState extends State<CommonText> {
  @override
  Widget build(BuildContext context) {
    return  Text(
      widget.text,
      style: const TextStyle(fontSize: 50.0, fontWeight: FontWeight.w600),
    );
  }
}
