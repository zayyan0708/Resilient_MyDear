// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_dear_app/app/modules/components/gradient_button.dart';
import 'package:my_dear_app/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

class NewpasswordView extends GetView<OnboardingController> {
  const NewpasswordView({Key? key}) : super(key: key);
  final confirm_pass_visible = false;
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
              colors: [(Color(0xFF0C056D)), (Color(0xFF11079E))],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(),
                flex: 1,
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
                              padding:
                                  const EdgeInsets.only(top: 30, right: 354),
                              child: IconButton(
                                icon: Icon(Icons.arrow_back),
                                onPressed: () {
                                  Get.offAllNamed(Routes.ACCOUNTVERIFY);
                                },
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03,
                            ),
                            Text(
                              'Create New Password',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF07033C),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.010,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 40, right: 40),
                              child: Text(
                                'Create Your New Password',
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
                              height:
                                  MediaQuery.of(context).size.height * 0.020,
                            ),
                            Obx(
                              () => TextFormField(
                                obscureText: controller.pass_check.value,
                                style: TextStyle(color: Color(0xFF11079E)),
                                cursorColor: Color(0xFF11079E),
                                decoration: InputDecoration(
                                  labelText: 'New Password*',
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
                            Obx(
                              () => TextFormField(
                                obscureText: controller.pass_check.value,
                                style: TextStyle(color: Color(0xFF11079E)),
                                cursorColor: Color(0xFF11079E),
                                decoration: InputDecoration(
                                  labelText: 'Confirm Password*',
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
                              height: MediaQuery.of(context).size.height * 0.04,
                            ),
                            GradientButton(
                              text: 'Change Password',
                              onPressedFunc: () {
                                Get.toNamed(Routes.SIGNIN);
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
