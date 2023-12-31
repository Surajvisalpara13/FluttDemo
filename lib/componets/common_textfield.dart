import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController controllerName;
  final String hintText;
  const CommonTextField({super.key, required this.controllerName, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: TextFormField(
        controller: controllerName,
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(8))),
        ),
      ),
    );
  }
}
