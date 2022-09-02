// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_dear_app/app/modules/components/gradient_button.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

class ForgotpasswordView extends GetView {
  const ForgotpasswordView({Key? key}) : super(key: key);
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
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Form(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 30, right: 354),
                              child: IconButton(
                                icon: Icon(Icons.arrow_back),
                                onPressed: () {
                                  Get.offAllNamed(Routes.SIGNIN);
                                },
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            Text(
                              'Forgot Password',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF07033C),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 40, right: 40),
                              child: Text(
                                'Enter the email address associated with your account to to receive a 4-digit verification code.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF07033C),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            TextFormField(
                              style: TextStyle(color: Color(0xFF11079E)),
                              cursorColor: Color(0xFF11079E),
                              decoration: InputDecoration(
                                labelText: 'Email Address*',
                                hintText: 'youremail@gmail.com',
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
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            GradientButton(
                              text: 'Recover Now',
                              onPressedFunc: () {
                                Get.toNamed(Routes.ACCOUNTVERIFY);
                              },
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
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
