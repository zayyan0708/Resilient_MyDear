// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_us, deprecated_member_use
import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_dear_app/app/modules/components/gradient_button.dart';
import 'package:my_dear_app/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

class ProfileView extends GetView<OnboardingController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Profile Setup',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF07033C),
                                ),
                              ),
                              // SizedBox(
                              //   height: 10.0,
                              // ),
                              Obx(
                                () => controller.isSelectedImage.value
                                    ? Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 65,
                                            backgroundImage: controller
                                                    .isSelectedImage.value
                                                ? FileImage(File(controller
                                                    .selectedImagePath
                                                    .value)) as ImageProvider
                                                : AssetImage('images/log.png'),
                                          ),
                                          Positioned(
                                            bottom: 2.0,
                                            right: 3.0,
                                            child: InkWell(
                                              onTap: () {
                                                showModalBottomSheet(
                                                    context: context,
                                                    builder: (context) =>
                                                        bottomSheet(context));
                                              },
                                              child: CircleAvatar(
                                                radius: 22,
                                                backgroundColor: Colors.white,
                                                child: CircleAvatar(
                                                  radius: 19,
                                                  backgroundColor:
                                                      Color(0xFF11079E),
                                                  child: Icon(
                                                    Icons.camera_alt_outlined,
                                                    color: Colors.white,
                                                    size: 28,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    : GestureDetector(
                                        onTap: (() {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) =>
                                                  bottomSheet(context));
                                        }),
                                        child: DottedBorder(
                                          borderType: BorderType.Circle,
                                          strokeWidth: 1,
                                          dashPattern: [8, 5],
                                          color: Color(0xFF11079E),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                100), //or 15.0
                                            child: Container(
                                              height: 120.0,
                                              width: 120.0,
                                              color: Color(0xFFF4F3FF),
                                              child: Icon(
                                                  Icons.camera_alt_outlined,
                                                  color: Color(0xFF11079E),
                                                  size: 30.0),
                                            ),
                                          ),
                                        ),
                                      ),
                              ),

                              // ProfileImage(),
                              DropdownSearch<String>(
                                //clearButtonProps:
                                // ClearButtonProps(isVisible: true),
                                popupProps: PopupProps.modalBottomSheet(
                                  constraints: BoxConstraints(
                                    maxHeight: 201,
                                    maxWidth: 375,
                                  ),
                                  showSelectedItems: true,
                                ),
                                items: ['Male', 'Female', 'Other'],
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    labelText: "Gender",
                                    labelStyle: TextStyle(
                                      color: Color(0xFF89889B),
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                onChanged: print,
                              ),
                              // SizedBox(
                              //   height: 10,
                              // ),
                              TextFormField(
                                style: TextStyle(color: Colors.black),
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  labelText: 'Age',
                                  labelStyle: TextStyle(
                                    color: Color(0xFF89889B),
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   height: 10,
                              // ),
                              DropdownSearch<String>(
                                popupProps: PopupProps.modalBottomSheet(
                                  constraints: BoxConstraints(
                                    maxHeight: 201,
                                    maxWidth: 375,
                                  ),
                                  showSelectedItems: true,
                                ),
                                items: ['Type I', 'Type II', 'Type III'],
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    labelText: "Condition",
                                    labelStyle: TextStyle(
                                      color: Color(0xFF89889B),
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                onChanged: print,
                              ),
                              // SizedBox(
                              //   height: 10,
                              // ),
                              DropdownSearch<String>(
                                popupProps: PopupProps.modalBottomSheet(
                                  constraints: BoxConstraints(
                                    maxHeight: 201,
                                    maxWidth: 375,
                                  ),
                                  showSelectedItems: true,
                                ),
                                items: ['Insulin', 'Non-Insulin'],
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    labelText: "Medication",
                                    labelStyle: TextStyle(
                                      color: Color(0xFF89889B),
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                onChanged: print,
                              ),
                              // SizedBox(
                              //   height: 10,
                              // ),
                              DropdownSearch<String>(
                                popupProps: PopupProps.modalBottomSheet(
                                  constraints: BoxConstraints(
                                    maxHeight: 201,
                                    maxWidth: 375,
                                  ),
                                  showSelectedItems: true,
                                ),
                                items: ['Insulin', 'Non-Insulin'],
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    labelText: "Other Medication",
                                    labelStyle: TextStyle(
                                      color: Color(0xFF89889B),
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                onChanged: print,
                              ),
                              // SizedBox(
                              //   height: 5,
                              // ),
                              DropdownSearch<String>(
                                popupProps: PopupProps.modalBottomSheet(
                                  constraints: BoxConstraints(
                                    maxHeight: 201,
                                    maxWidth: 375,
                                  ),
                                  showSelectedItems: true,
                                ),
                                items: [
                                  'Insulin Pump User',
                                  'Non-Insulin Pump User'
                                ],
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    labelText: "User Type",
                                    labelStyle: TextStyle(
                                      color: Color(0xFF89889B),
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                onChanged: print,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GradientButton(
                                text: 'Save',
                                onPressedFunc: () {
                                  Get.toNamed(Routes.POLICY);
                                },
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
      ),
    );
  }

  Widget bottomSheet(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(children: <Widget>[
        Text(
          "Chooose Profile Photo",
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton.icon(
              onPressed: () {
                controller.getImage(ImageSource.camera);
              },
              icon: Icon(Icons.camera),
              label: Text('Camera'),
            ),
            FlatButton.icon(
              onPressed: () {
                controller.getImage(ImageSource.gallery);
              },
              icon: Icon(Icons.image),
              label: Text('Gallery'),
            ),
          ],
        )
      ]),
    );
  }
}
