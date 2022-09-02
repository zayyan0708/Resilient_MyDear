// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_dear_app/app/modules/components/custom_bottomsheet.dart';
import 'package:my_dear_app/app/modules/components/gradient_button.dart';
import 'package:my_dear_app/app/modules/components/textfield_widget.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

class AddreminderView extends GetView {
  const AddreminderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final timecontroller = TextEditingController();
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF9F9FF),
      appBar: AppBar(
        foregroundColor: Color(0xFF0C056D),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Add Reminder',
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
                maxHeight: MediaQuery.of(context).size.height * 0.8,
                maxWidth: MediaQuery.of(context).size.width,
              ),
              child: Form(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextfieldWidget(
                        labeltext: 'Title',
                        hinttext: 'e.g Insulin Aspart',
                      ),
                      TextfieldWidget(
                        labeltext: 'Description',
                        hinttext: 'Description',
                      ),
                      TextFormField(
                        keyboardType: TextInputType.none,
                        cursorColor: Color(0xFF89889B),
                        decoration: InputDecoration(
                          hintText: '09/05/2022',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            color: Color(0xFF89889B),
                            fontWeight: FontWeight.w400,
                          ),
                          labelText: 'Medication Date',
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
                            onPressed: () {},
                            icon: Icon(
                              Icons.calendar_today_outlined,
                              size: 20,
                              color: Color(0xFF89889B),
                            ),
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: timecontroller,
                        keyboardType: TextInputType.none,
                        cursorColor: Color(0xFF89889B),
                        decoration: InputDecoration(
                          hintText: 'e.g Before Breakfast',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            color: Color(0xFF89889B),
                            fontWeight: FontWeight.w400,
                          ),
                          labelText: 'Mediactions Time',
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
                              CustomizeBottomSheet(
                                context,
                                [
                                  'Before Breakfast',
                                  'After Breakfast',
                                  'Before Lunch',
                                  'After Lunch',
                                  'Before Dinner',
                                  'After Dinner',
                                ],
                                timecontroller,
                              );
                            },
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xFF89889B),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 16.0,
                          bottom: 16,
                        ),
                        child: Text(
                          'Remind me',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            color: Color(0xFF89889B),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            height: 15,
                            width: 15,
                            // decoration: BoxDecoration(
                            //     gradient: LinearGradient(
                            //   begin: Alignment.topLeft,
                            //   end: Alignment.centerRight,
                            //   colors: <Color>[
                            //     Color(0xFF11079E),
                            //     Color(0xFF594FE1),
                            //   ],
                            // )),
                            child: Checkbox(
                              //fillColor: ,
                              activeColor: Color(0xFF11079E),
                              checkColor: Colors.white,
                              onChanged: ((value) {
                                value;
                              }),
                              value: false,
                            ),
                          ),
                          Text(
                            'Before 30 mins',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              color: Color(0xFF89889B),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            height: 15,
                            width: 15,
                            // decoration: BoxDecoration(
                            //     gradient: LinearGradient(
                            //   begin: Alignment.topLeft,
                            //   end: Alignment.centerRight,
                            //   colors: <Color>[
                            //     Color(0xFF11079E),
                            //     Color(0xFF594FE1),
                            //   ],
                            // )),
                            child: Checkbox(
                              //fillColor: ,
                              activeColor: Color(0xFF11079E),
                              checkColor: Colors.white,
                              onChanged: ((value) {
                                value;
                              }),
                              value: true,
                            ),
                          ),
                          Text(
                            'Before 1 hour',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              color: Color(0xFF89889B),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            height: 15,
                            width: 15,
                            // decoration: BoxDecoration(
                            //     gradient: LinearGradient(
                            //   begin: Alignment.topLeft,
                            //   end: Alignment.centerRight,
                            //   colors: <Color>[
                            //     Color(0xFF11079E),
                            //     Color(0xFF594FE1),
                            //   ],
                            // )),
                            child: Checkbox(
                              //fillColor: ,
                              activeColor: Color(0xFF11079E),
                              checkColor: Colors.white,
                              onChanged: ((value) {
                                value;
                              }),
                              value: true,
                            ),
                          ),
                          Text(
                            'Before 1 day',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              color: Color(0xFF89889B),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Center(
                          child: GradientButton(
                        text: 'Save',
                        onPressedFunc: () {
                          Get.offNamed(Routes.REMINDERS);
                        },
                      ))
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
