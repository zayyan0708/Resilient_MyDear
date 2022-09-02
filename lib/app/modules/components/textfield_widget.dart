// ignore_for_file: must_be_immutable, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  late String labeltext;
  late String hinttext;
  TextfieldWidget({required this.labeltext, required this.hinttext});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Color(0xFF89889B),
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          color: Color(0xFF89889B),
          fontWeight: FontWeight.w400,
        ),
        labelText: labeltext,
        labelStyle: TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          color: Color(0xFF89889B),
          fontWeight: FontWeight.w400,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xFF89889B),
          ),
        ),
      ),
    );
  }
}
