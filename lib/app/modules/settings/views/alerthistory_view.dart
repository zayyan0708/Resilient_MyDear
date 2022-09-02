// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AlerthistoryView extends GetView {
  const AlerthistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        //leading: Icon(Ic
        //forons.arrow_back),
        foregroundColor: Color(0xFF0C056D),
        title: const Text(
          'Alert History',
          style: TextStyle(
              color: Color(0xFF0C056D),
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0xFFF4F3FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.82,
                color: Color(0xFFF9F9FF),
                child: ListView.builder(
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        margin: EdgeInsets.only(bottom: 2.0),
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.011,
                            bottom: MediaQuery.of(context).size.height * 0.011,
                            left: MediaQuery.of(context).size.width * 0.04,
                            right: MediaQuery.of(context).size.width * 0.04),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    'May 6, 14:34 ',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFBE9E45),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Blood Glucose Level',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF89889B),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "270 mg/dl",
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFEF5261),
                                        ),
                                      ),
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.arrow_upward,
                                          size: 20,
                                          color: Color(0xFFEF5261),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              width: 37,
                              //thickness: 1.5,
                              indent: screenHeight * 0.023,
                              endIndent: screenHeight * 0.010,
                              color: Color(0xFF89889B),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 21.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Type 1 Alert',
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF0C056D),
                                    ),
                                  ),
                                  Text(
                                    'Sent to Family/Friends',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF89889B),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
