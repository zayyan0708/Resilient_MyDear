// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_dear_app/app/modules/components/gradient_button.dart';
import 'package:my_dear_app/app/modules/settings/controllers/settings_controller.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

class ChangepasswordView extends GetView<SettingsController> {
  const ChangepasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        //leading: Icon(Ic
        //forons.arrow_back),
        foregroundColor: Color(0xFF0C056D),
        title: const Text(
          'Change Password',
          style: TextStyle(
              color: Color(0xFF0C056D),
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xFFF4F3FF),
            padding: EdgeInsets.only(
              top: 20,
            ),
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    bottom: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width * 0.04,
                    right: MediaQuery.of(context).size.width * 0.04,
                  ),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height - 170,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Update your new password',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: 'inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xFF89889B)),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Obx(
                            () => TextFormField(
                              obscureText: controller.pass_check.value,
                              style: TextStyle(color: Color(0xFF11079E)),
                              cursorColor: Color(0xFF89889B),
                              decoration: InputDecoration(
                                labelText: 'Current Password',
                                labelStyle: TextStyle(
                                  color: Color(0xFF89889B),
                                  fontSize: 15,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF89889B),
                                  ),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () => controller.pass_check.value =
                                      !controller.pass_check.value,
                                  child: Icon(
                                    controller.pass_check.value
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Color(0xFF89889B),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.008,
                          ),
                          Obx(
                            () => TextFormField(
                              obscureText: controller.pass_check.value,
                              style: TextStyle(color: Color(0xFF11079E)),
                              cursorColor: Color(0xFF89889B),
                              decoration: InputDecoration(
                                labelText: 'New Password',
                                labelStyle: TextStyle(
                                  color: Color(0xFF89889B),
                                  fontSize: 15,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF89889B),
                                  ),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () => controller.pass_check.value =
                                      !controller.pass_check.value,
                                  child: Icon(
                                    controller.pass_check.value
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Color(0xFF89889B),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.008,
                          ),
                          Obx(
                            () => TextFormField(
                              obscureText: controller.pass_check.value,
                              style: TextStyle(color: Color(0xFF11079E)),
                              cursorColor: Color(0xFF89889B),
                              decoration: InputDecoration(
                                labelText: 'Re-Type New Password',
                                labelStyle: TextStyle(
                                  color: Color(0xFF89889B),
                                  fontSize: 15,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF89889B),
                                  ),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () => controller.pass_check.value =
                                      !controller.pass_check.value,
                                  child: Icon(
                                    controller.pass_check.value
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Color(0xFF89889B),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.08,
                          ),
                          GradientButton(
                            text: 'Save Password',
                            onPressedFunc: () {
                              Get.toNamed(Routes.SETTINGS);
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
