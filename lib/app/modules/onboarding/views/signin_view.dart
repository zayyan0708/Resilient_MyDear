// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_dear_app/app/modules/components/gradient_button.dart';
import 'package:my_dear_app/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

class SigninView extends GetView<OnboardingController> {
  const SigninView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            //color: Color(0xFF0C056D),
            gradient: LinearGradient(
              colors: const [(Color(0xFF0C056D)), (Color(0xFF11079E))],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Column(),
              ),
              Expanded(
                  flex: 9,
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
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Form(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              'Sign In',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF07033C),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Enter your credentials to sign in',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF07033C),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
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
                              height: 20.0,
                            ),
                            Obx(
                              () => TextFormField(
                                obscureText: controller.pass_check.value,
                                style: TextStyle(color: Color(0xFF11079E)),
                                cursorColor: Color(0xFF11079E),
                                decoration: InputDecoration(
                                  labelText: 'Password*',
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
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 230,
                                top: 20,
                              ),
                              child: GestureDetector(
                                child: Text(
                                  'Forgot Password?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFBE9E45),
                                    fontFamily: 'Inter',
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                onTap: () {
                                  Get.toNamed(Routes.FORGOTPASSWORD);
                                },
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            GradientButton(
                              text: 'Sign In',
                              onPressedFunc: () {
                                Get.toNamed(Routes.HOME);
                              },
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Don\'t have an account? ',
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
                                    'Sign up ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFBE9E45),
                                      fontFamily: 'Inter',
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  onTap: () {
                                    Get.toNamed(Routes.SIGNUP);
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
