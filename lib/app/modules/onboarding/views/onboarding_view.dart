// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_dear_app/app/modules/components/gradient_button.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/splash_logo.png',
              height: 176,
              width: 205,
            ),
            Text(
              'Welcome to',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Inter',
                fontSize: 26.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'myDEAR',
              style: TextStyle(
                color: Color(0xFFBE9E45),
                fontFamily: 'Lucida Bright',
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 31,
            ),
            Text(
              'In quia accusamus rem nobis At \npraesentium repudiandae.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF07033C),
                fontFamily: 'Inter',
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            GradientButton(
              text: 'Get Started',
              onPressedFunc: () {
                Get.toNamed(Routes.SIGNUP);
              },
            ),
            SizedBox(
              height: 29,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF686868),
                    fontFamily: 'Inter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  child: Text(
                    'Sign in ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFBE9E45),
                      fontFamily: 'Inter',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onTap: () {
                    Get.toNamed(Routes.SIGNIN);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
