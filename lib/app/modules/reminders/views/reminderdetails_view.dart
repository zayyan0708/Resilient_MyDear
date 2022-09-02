// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ReminderdetailsView extends GetView {
  const ReminderdetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF9F9FF),
      appBar: AppBar(
        foregroundColor: Color(0xFF0C056D),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Reminder Details',
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
                  maxHeight: MediaQuery.of(context).size.height * 0.4,
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 20),
                      child: Text(
                        'Insulin Medication',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF07033C),
                        ),
                      ),
                    ),
                    Text(
                      'It breaks up the intimidating blocks of text and makes the page more inviting to read, which is again ironic, considering this is dummy copy.',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF89889B),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18.0, bottom: 10),
                      child: Row(
                        children: [
                          Text(
                            'Medication Date:',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF89889B),
                            ),
                          ),
                          Text(
                            ' 09/05/2022',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFBE9E45),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 10),
                      child: Row(
                        children: [
                          Text(
                            'Medication Time:',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF89889B),
                            ),
                          ),
                          Text(
                            ' Before Breakfast',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFBE9E45),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 10),
                      child: Row(
                        children: [
                          Text(
                            'Remind me:',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF89889B),
                            ),
                          ),
                          Text(
                            ' Before 1 day',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFBE9E45),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
