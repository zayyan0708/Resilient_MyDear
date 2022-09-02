// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_dear_app/app/modules/onboarding/controllers/onboarding_controller.dart';

class SplashView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    controller.NavigateTohome;
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
          maxWidth: MediaQuery.of(context).size.width,
        ),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
            ),
            ClipRect(
              child: Image.asset(
                'images/splash_logo.png',
              ),
            ),
            Text(
              'myDear',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Lucida Bright',
                fontSize: 32.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'DIABETIC EMERGENCY ALERT RESPONSE',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Lucida Bright',
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
