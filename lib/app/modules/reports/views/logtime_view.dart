// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_dear_app/app/modules/reports/controllers/reports_controller.dart';

class LogtimeView extends GetView<ReportsController> {
  const LogtimeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        //leading: Icon(Ic
        //forons.arrow_back),
        foregroundColor: Color(0xFF0C056D),
        title: Text(
          'Logging Time',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Log your Time to measure your Glucose Level.',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF88989B)),
                ),
              ),
              Column(
                children: [
                  Container(
                      //height: MediaQuery.of(context).size.height * 0.065,
                      margin: EdgeInsets.only(bottom: 2.0),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Log Time 1',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF88989B),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(
                                  MdiIcons.clockTimeFour,
                                  size: 20,
                                  color: Color(0xFFCBB26B),
                                ),
                                onPressed: () {
                                  showCupertinoModalPopup(
                                    context: context,
                                    builder: (context) => CupertinoActionSheet(
                                      actions: [
                                        buildTimePicker(context, controller, 1),
                                      ],
                                      title: GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'save',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              color: Color(0xFF11079E),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat'),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              Obx(
                                () => Text(
                                  controller.selectedLogTime1.value,
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF88989B),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                  Container(
                      //height: MediaQuery.of(context).size.height * 0.065,
                      margin: EdgeInsets.only(bottom: 2.0),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Log Time 2',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF88989B),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(
                                  MdiIcons.clockTimeFour,
                                  size: 20,
                                  color: Color(0xFFCBB26B),
                                ),
                                onPressed: () {
                                  showCupertinoModalPopup(
                                    context: context,
                                    builder: (context) => CupertinoActionSheet(
                                      actions: [
                                        buildTimePicker(context, controller, 2),
                                      ],
                                      title: GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'save',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              color: Color(0xFF11079E),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat'),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              Obx(
                                () => Text(
                                  controller.selectedLogTime2.value,
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF88989B),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                  Container(
                      //height: MediaQuery.of(context).size.height * 0.065,
                      margin: EdgeInsets.only(bottom: 2.0),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Log Time 3',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF88989B),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(
                                  MdiIcons.clockTimeFour,
                                  size: 20,
                                  color: Color(0xFFCBB26B),
                                ),
                                onPressed: () {
                                  showCupertinoModalPopup(
                                    context: context,
                                    builder: (context) => CupertinoActionSheet(
                                      actions: [
                                        buildTimePicker(context, controller, 3),
                                      ],
                                      title: GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'save',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              color: Color(0xFF11079E),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat'),
                                        ),
                                      ),

                                      // cancelButton: CupertinoActionSheetAction(
                                      //   child: Text('Done'),
                                      //   onPressed: () {
                                      //     Navigator.pop(context);
                                      //   },
                                      // ),
                                    ),
                                  );
                                },
                              ),
                              Obx(
                                () => Text(
                                  controller.selectedLogTime3.value,
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF88989B),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTimePicker(
          BuildContext context, ReportsController controller, var choice) =>
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.18,
        child: CupertinoDatePicker(
            //initialDateTime: this.dateTime,
            mode: CupertinoDatePickerMode.time,
            //use24hFormat: false,
            onDateTimeChanged: (dateTime) {
              if (choice == 1) {
                controller.selectedLogTime1.value =
                    DateFormat.jm().format(DateTime.parse(dateTime.toString()));
              } else if (choice == 2) {
                controller.selectedLogTime2.value =
                    DateFormat.jm().format(DateTime.parse(dateTime.toString()));
              } else if (choice == 3) {
                controller.selectedLogTime3.value =
                    DateFormat.jm().format(DateTime.parse(dateTime.toString()));
              }
            }),
      );
}
