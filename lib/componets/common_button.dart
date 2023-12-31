import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String btnText;
  final dynamic onTap;
  const CommonButton({super.key, required this.btnText,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      width: MediaQuery.of(context).size.width,
      height: 55.0,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 10.0,
        ),
        child: Text(
          btnText,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
