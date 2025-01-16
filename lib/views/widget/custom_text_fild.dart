import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextFild extends StatelessWidget {
  final int? maxLines;
  final String text;
  const CustomTextFild(
      {super.key, @required this.maxLines, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines ?? 1,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(fontSize: 20, color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(kPrimaryColor),
        focusedBorder: buildBorder(const Color.fromARGB(255, 10, 222, 17)),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white),
      );
}
