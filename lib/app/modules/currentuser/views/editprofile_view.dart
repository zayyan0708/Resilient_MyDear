// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_local_variable, deprecated_member_use, must_be_immutable, use_key_in_widget_constructors, unused_import, prefer_typing_uninitialized_variables

import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_dear_app/app/modules/components/custom_bottomsheet.dart';
import 'package:my_dear_app/app/modules/components/gradient_button.dart';
import 'package:my_dear_app/app/modules/currentuser/controllers/currentuser_controller.dart';
import 'package:my_dear_app/app/modules/currentuser/views/currentuser_view.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

class EditprofileView extends GetView<CurrentuserController> {
  const EditprofileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final gender_controller = TextEditingController();
    final condition_controller = TextEditingController();
    final Medication_controller = TextEditingController();
    final OtherMed_controller = TextEditingController();
    final UserType_controller = TextEditingController();
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF9F9FF),
      appBar: AppBar(
        foregroundColor: Color(0xFF0C056D),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          controller.editprofile.value,
          style: TextStyle(
              fontFamily: 'SF',
              fontSize: 17,
              color: Color(0xFF0C056D),
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xFFF9F9FF),
            padding: EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(20),
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
                maxWidth: MediaQuery.of(context).size.width,
              ),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Obx(
                      () => controller.isSelectedImage.value
                          ? Stack(
                              children: [
                                CircleAvatar(
                                  radius: 65,
                                  backgroundImage:
                                      controller.isSelectedImage.value
                                          ? FileImage(
                                              File(controller
                                                  .selectedImagePath.value),
                                            ) as ImageProvider
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
                                        backgroundColor: Color(0xFF11079E),
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
                                    builder: (context) => bottomSheet(context));
                              }),
                              child: DottedBorder(
                                borderType: BorderType.Circle,
                                strokeWidth: 1,
                                dashPattern: [8, 5],
                                color: Color(0xFF11079E),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(100), //or 15.0
                                  child: Container(
                                    height: 120.0,
                                    width: 120.0,
                                    color: Color(0xFFF4F3FF),
                                    child: Icon(Icons.camera_alt_outlined,
                                        color: Color(0xFF11079E), size: 30.0),
                                  ),
                                ),
                              ),
                            ),
                    ),
                    DropDownTextField(
                      controller: gender_controller,
                      Labeltext: 'Gender',
                      itemsList: ['Male', 'Female', "Other"],
                    ),
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
                    DropDownTextField(
                      controller: condition_controller,
                      Labeltext: 'Condition',
                      itemsList: ['Type I', 'Type II', 'Type III'],
                    ),
                    DropDownTextField(
                      controller: Medication_controller,
                      Labeltext: 'Medication',
                      itemsList: ['Insulin', 'Non-Insulin'],
                    ),
                    DropDownTextField(
                      controller: OtherMed_controller,
                      Labeltext: 'Other Medication',
                      itemsList: ['Insulin', 'Non-Insulin'],
                    ),
                    DropDownTextField(
                      controller: UserType_controller,
                      Labeltext: 'UserType',
                      itemsList: ['Insulin Pump User', 'Non-Insulin Pump User'],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GradientButton(
                      text: 'Save',
                      onPressedFunc: () {
                        Navigator.pop(context);
                        //CurrentUserInfo(context);
                      },
                    ),
                  ],
                ),
              ),
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

class DropDownTextField extends StatelessWidget {
  DropDownTextField({
    required this.controller,
    required this.Labeltext,
    required this.itemsList,
  });

  final TextEditingController controller;
  var Labeltext;
  List<String> itemsList;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.none,
      cursorColor: Color(0xFF89889B),
      decoration: InputDecoration(
        labelText: Labeltext,
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
        suffixIcon: IconButton(
          onPressed: () {
            CustomizeBottomSheet(context, itemsList, controller);
          },
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xFF89889B),
          ),
        ),
      ),
    );
  }
}
