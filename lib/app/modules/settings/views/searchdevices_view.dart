// ignore_for_file: unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, non_constant_identifier_names, unused_local_variable, dead_code

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:my_dear_app/app/modules/reports/controllers/reports_controller.dart';
import 'package:my_dear_app/app/modules/settings/controllers/settings_controller.dart';

class SearchdevicesView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    //final AnimationController _controller;
    return Scaffold(
      //resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFF11079E),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Text(
                    'Searching New Devices',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1,
                  left: MediaQuery.of(context).size.width * 0.28,
                ),
                child: Row(
                  children: [
                    Text(
                      'S E A R C H I N G ',
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    TypewriterAnimatedTextKit(
                      text: ['. . .'],
                      repeatForever: false,
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              GestureDetector(
                onTap: () {
                  AvailableDevices(
                    context,
                    ['assdddd', 'dffffff'],
                  );
                },
                child: Lottie.asset(
                  'json/bluetooth-searching.json',
                  // controller: controller.animationcontroller,
                  // onLoaded: (comp) {
                  //   controller.animationcontroller.duration = comp.duration;
                  //   controller.animationcontroller.forward();
                  // },
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  fit: BoxFit.fill,
                ),
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.1,
              // ),
              Text(
                'Make sure your device is nearby and turned on in Pair Mode',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<dynamic> AvailableDevices(BuildContext context, List<String> item) {
  List<String> text = item;
  return showCupertinoModalBottomSheet(
    context: context,
    builder: (context) => Material(
      child: Container(
        color: Color(0xFFFBFBFD),
        height: MediaQuery.of(context).size.height * 0.5,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: Colors.grey,
              height: 10,
              thickness: 5,
              indent: 150,
              endIndent: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Search Result',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14,
                  color: Color(0xFF11079E),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      margin: EdgeInsets.only(bottom: 3.0),
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.011,
                          bottom: MediaQuery.of(context).size.height * 0.011,
                          left: MediaQuery.of(context).size.width * 0.04,
                          right: MediaQuery.of(context).size.width * 0.03),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                      ),
                      child: ListTile(
                        title: Text(
                          'CGM-42562',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF07033C),
                          ),
                        ),
                        trailing: true
                            ? GestureDetector(
                                onTap: () {
                                  // controller.ispaired.value = false;
                                },
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.check_circle,
                                          color: Color(0xFFBE9E45)),
                                      Text(
                                        'Pair',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFFBE9E45),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  //controller.ispaired.value = true;
                                },
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFBF9F4),
                                      borderRadius: BorderRadius.circular(6.5)),
                                  child: Center(
                                    child: Text(
                                      'Pair',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFFBE9E45),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    ),
  );
}
