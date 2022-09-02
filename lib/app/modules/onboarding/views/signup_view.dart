// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_dear_app/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:my_dear_app/app/modules/components/gradient_button.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

class SignUpView extends GetView<OnboardingController> {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screen_Height = MediaQuery.of(context).size.height;
    var screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: screen_Height,
              maxWidth: screen_width,
            ),
            decoration: BoxDecoration(
              //color: Color(0xFF0C056D),
              gradient: LinearGradient(
                colors: [(Color(0xFF0C056D)), (Color(0xFF11079E))],
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        top: 0,
                      ),
                      child: Form(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: screen_Height * 0.02,
                            ),
                            Text(
                              'Sign Up',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF07033C),
                              ),
                            ),
                            SizedBox(
                              height: screen_Height * 0.01,
                            ),
                            Text(
                              'Enter your details to setup your account',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF07033C),
                              ),
                            ),
                            SizedBox(
                              height: screen_Height * 0.008,
                            ),
                            TextFormField(
                              style: TextStyle(color: Color(0xFF11079E)),
                              cursorColor: Color(0xFF11079E),
                              decoration: InputDecoration(
                                labelText: 'Full Name*',
                                labelStyle: TextStyle(
                                  color: Color(0xFF89889B),
                                  fontSize: 17,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: const Color(0xFF11079E),
                                  ),
                                ),
                              ),
                              // validator: (value) {
                              //   if (value!.isEmpty ||
                              //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                              //     return "Enter Correct Name";
                              //   } else {
                              //     return null.toString();
                              //   }
                              //},
                            ),
                            SizedBox(
                              height: screen_Height * 0.01,
                            ),
                            TextFormField(
                              style: TextStyle(color: Color(0xFF11079E)),
                              cursorColor: Color(0xFF11079E),
                              decoration: InputDecoration(
                                labelText: 'Mobile Number*',
                                labelStyle: TextStyle(
                                  color: Color(0xFF89889B),
                                  fontSize: 17,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: const Color(0xFF11079E),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screen_Height * 0.01,
                            ),
                            TextFormField(
                              style: TextStyle(color: Color(0xFF11079E)),
                              cursorColor: Color(0xFF11079E),
                              decoration: InputDecoration(
                                labelText: 'Email Address*',
                                labelStyle: TextStyle(
                                  color: Color(0xFF89889B),
                                  fontSize: 17,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: const Color(0xFF11079E),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screen_Height * 0.01,
                            ),
                            Obx(
                              () => TextFormField(
                                obscureText: controller.pass_check.value,
                                style: TextStyle(color: Color(0xFF11079E)),
                                cursorColor: Color(0xFF11079E),
                                decoration: InputDecoration(
                                  labelText: 'Create Password*',
                                  labelStyle: TextStyle(
                                    color: Color(0xFF89889B),
                                    fontSize: 17,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: const Color(0xFF11079E),
                                    ),
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () => controller.pass_check.value =
                                        !controller.pass_check.value,
                                    child: Icon(
                                      controller.pass_check.value
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Color(0xFF11079E),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screen_Height * 0.01,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Obx(
                                      () => Checkbox(
                                        value:
                                            controller.terms_cond_check.value,
                                        onChanged: (bool? value) {
                                          controller.terms_cond_check.value =
                                              !controller
                                                  .terms_cond_check.value;
                                        },
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                "By signing up, you agree to the",
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF8F92A1),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: GestureDetector(
                                              onTap: () {
                                                Get.toNamed(
                                                    Routes.TERMSANDCONDITIONS);
                                              },
                                              child: Text(
                                                ' Terms & Conditions',
                                                style: TextStyle(
                                                  color: Color(0xFFBE9E45),
                                                  fontFamily: 'Inter',
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                          TextSpan(
                                            text: "\n and",
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFF8F92A1),
                                            ),
                                          ),
                                          WidgetSpan(
                                            child: GestureDetector(
                                              onTap: () {
                                                Get.toNamed(Routes.POLICY);
                                              },
                                              child: Text(
                                                ' Privacy and Policy.',
                                                style: TextStyle(
                                                  color: Color(0xFFBE9E45),
                                                  fontFamily: 'Inter',
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screen_Height * 0.010,
                            ),
                            GradientButton(
                              text: 'Sign UP',
                              onPressedFunc: () {
                                Get.toNamed(Routes.PROFILE);
                              },
                            ),
                            SizedBox(
                              height: screen_Height * 0.010,
                            ),
                            Text(
                              'or continue with',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF8F92A1),
                              ),
                            ),
                            SizedBox(
                              height: screen_Height * 0.010,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              //crossAxisAlignment: CrossAxisAlignment,
                              children: [
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: 44,
                                    width: 44,
                                    child: Icon(
                                      Icons.apple,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onTap: () {
                                    //print('sign in clicked');
                                  },
                                ),
                                SizedBox(
                                  width: screen_width * 0.010,
                                ),
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFF4776B9),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: 44,
                                    width: 44,
                                    child:
                                        Image.asset('images/facebook_logo.png'),
                                  ),
                                  onTap: () {
                                    //print('sign in clicked');
                                  },
                                ),
                                SizedBox(
                                  width: screen_width * 0.010,
                                ),
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDC3C2A),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: 44,
                                    width: 44,
                                    child: Image.asset('images/gmail_logo.png'),
                                  ),
                                  onTap: () {
                                    //print('sign in clicked');
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screen_Height * 0.010,
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
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onTap: () {
                                    Get.toNamed(Routes.SIGNIN);
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screen_Height * 0.01,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  flex: 9,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
