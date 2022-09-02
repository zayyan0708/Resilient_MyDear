// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, duplicate_ignore

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

class AlertmydearView extends GetView {
  const AlertmydearView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFF0C056D),
        elevation: 1,
        title: const Text(
          'myDEAR',
          style: TextStyle(
              fontFamily: 'SF',
              fontSize: 17,
              color: Color(0xFF0C056D),
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xFFF9F9FF),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 30, bottom: 30),
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Icon(
                  MdiIcons.chevronDownBoxOutline,
                  color: Color(0xFF07033C),
                  size: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Diabetic Emergency Alert Response',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '36-Year-Old Black Female',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF357AFF),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Type 1 Diabetic',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFEF5261),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Insulin Pump User',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFEF5261),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  color: Color(0xFFF9F9FF),
                  padding: EdgeInsets.all(10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Glucose Level is:',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF89889B),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '464 mg/dl',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFEF5261),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_upward,
                              size: 20,
                              color: Color(0xFFEF5261),
                            ),
                          ],
                        ),
                      ]),
                ),
                Text(
                  'An emergency message has been sent to your friends & family!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF357AFF),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Icon(
                    Icons.check,
                    color: Color(0xFF357AFF),
                  ),
                  title: Text(
                    'Contact your Physician',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF357AFF),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.check,
                    color: Color(0xFF357AFF),
                  ),
                  title: Text(
                    'Check your blood glucose level (manually if a CGM User)',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF357AFF),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.check,
                    color: Color(0xFF357AFF),
                  ),
                  title: Text(
                    'Check your Ketones',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF357AFF),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.check,
                    color: Color(0xFF357AFF),
                  ),
                  title: Text(
                    'Check the FAQ for Hyperglycemia Signs & Symptoms',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF357AFF),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.check,
                    color: Color(0xFF357AFF),
                  ),
                  title: Text(
                    'Press the myDEAR ALERT if you need immediate medical attention.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF357AFF),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                RaisedButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Get.toNamed(Routes.AlERTSTOP);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      // ignore: prefer_const_constructors
                      gradient: LinearGradient(
                        colors: [(Color(0xFF11079E)), (Color(0xFF594FE1))],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 100.0, minHeight: 40.0),
                      alignment: Alignment.center,
                      child: Text(
                        'myDEAR',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
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
