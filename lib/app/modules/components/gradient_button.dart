// ignore_for_file: deprecated_member_use, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:my_dear_app/app/modules/onboarding/views/accountverify_view.dart';
// import 'package:my_dear_app/app/modules/onboarding/views/forgotpassword_view.dart';
// import 'package:my_dear_app/app/modules/onboarding/views/newpassword_view.dart';
// import 'package:my_dear_app/app/modules/onboarding/views/policy_view.dart';
// import 'package:my_dear_app/app/modules/onboarding/views/profile_view.dart';
// import 'package:my_dear_app/app/modules/onboarding/views/signin_view.dart';
// import 'package:my_dear_app/app/modules/onboarding/views/signup_view.dart';
// import 'package:my_dear_app/app/routes/app_pages.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final Function onPressedFunc;
  GradientButton({required this.text, required this.onPressedFunc});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        onPressedFunc();
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(80.0),
      ),
      child: Ink(
        decoration: BoxDecoration(
          // ignore: prefer_const_constructors
          gradient: LinearGradient(
            colors: [(Color(0xFF11079E)), (Color(0xFF594FE1))],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
