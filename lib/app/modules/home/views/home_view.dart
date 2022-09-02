// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, use_key_in_widget_constructors, must_be_immutable, prefer_interpolation_to_compose_strings, import_of_legacy_library_into_null_safe, deprecated_member_use, no_leading_underscores_for_local_identifiers, unused_local_variable, depend_on_referenced_packages

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_dear_app/app/modules/components/bottom_navigation.dart';
import 'package:my_dear_app/app/modules/components/custom_appbar.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  //DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final _timecontroller = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF9F9FF),
      appBar: CustomAppBar('Home', context),
      bottomNavigationBar: BottomNavigation(
        isHome: true,
        isMedication: false,
        isFamily: false,
        isReport: false,
        isSetting: false,
      ),
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 15.0, left: 19.0),
              child: Text(
                'Recent Glucose Level',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0C056D),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.004,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              child: Swiper(
                itemCount: controller.glucoseList.length,
                itemWidth: MediaQuery.of(context).size.width,
                itemHeight: MediaQuery.of(context).size.height * 0.3,
                scrollDirection: Axis.vertical,
                layout: SwiperLayout.STACK,
                itemBuilder: (context, index) {
                  return Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          GlucoseCard(
                            time: controller.glucoseList[index].time,
                            date: controller.glucoseList[index].date,
                            month: controller.glucoseList[index].month,
                            title: controller.glucoseList[index].title,
                            level: controller.glucoseList[index].level,
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            GestureDetector(
              onTap: () {
                //AddGlucoseDialog(context);

                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      backgroundColor: Colors.transparent,
                      child: Container(
                        padding: EdgeInsets.only(
                          // top: 20,
                          left: 20,
                          right: 20,
                        ),
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13.3),
                        ),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.offAllNamed(Routes.HOME);
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Icon(
                                      Icons.close,
                                      color: Color(0xFF89889B),
                                      size: 30.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 30.0),
                                  child: Text(
                                    'Glucometer Glucose\nLevel',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFF0C056D),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.02),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    label: Text(
                                      'Glucose Level',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF89889B),
                                        fontSize: 17,
                                      ),
                                    ),
                                    hintText: 'Enter Glucose Level',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF89889B),
                                      // fontSize: 12,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF89889B),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF89889B),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                TextFormField(
                                  enabled: true,
                                  controller: _timecontroller,
                                  keyboardType: TextInputType.none,
                                  decoration: InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Color(0xFF89889B),
                                    )),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        showCupertinoModalPopup(
                                          context: context,
                                          builder: (context) =>
                                              CupertinoActionSheet(
                                            actions: [
                                              buildTimePicker(
                                                  context, controller),
                                            ],
                                            cancelButton:
                                                CupertinoActionSheetAction(
                                              child: Text('Done'),
                                              onPressed: () {
                                                _timecontroller.text =
                                                    controller
                                                        .selectedTime.value;
                                              },
                                            ),
                                          ),
                                        );
                                      },
                                      icon: Icon(
                                        Icons.watch_later_outlined,
                                        color: Color(0xFF89889B),
                                      ),
                                    ),
                                    label: Text(
                                      'Time',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontSize: 15,
                                        color: Color(0xFF89889B),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    hintText: 'Select Time',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 14,
                                      color: Color(0xFF89889B),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                RaisedButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    Get.offAllNamed(Routes.HOME);
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80.0),
                                  ),
                                  child: Ink(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          (Color(0xFF11079E)),
                                          (Color(0xFF594FE1))
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Container(
                                      constraints: BoxConstraints(
                                          maxWidth: 100.0, minHeight: 40.0),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Save',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1 - 10,
                color: Colors.white,
                child: DottedBorder(
                  borderType: BorderType.Rect,
                  strokeWidth: 1,
                  dashPattern: [8, 5],
                  color: Color(0xFFBE9E45),
                  child: Container(
                    color: Color(0xFFFFFFFF),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Color(0xFFBE9E45),
                          ),
                          Text(
                            ' Add glucometer glucose level',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                color: Color(0xFFBE9E45),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 11.0,
                    left: 19.0,
                  ),
                  child: Text(
                    'Today\'s Medications',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0C056D),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 11.0,
                        right: 19.0,
                      ),
                      child: Text(
                        'See All',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFFBE9E45),
                          fontFamily: 'Inter',
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    onTap: () {
                      //print('sign in clicked');
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.335,
              color: Color(0xFFF9F9FF),
              child: ListView.builder(
                itemCount: controller.medicationList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                    ),
                    child: ListTile(
                      leading: SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset('images/medicine2.png'),
                      ),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller.medicationList[index].title,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF0C056D),
                            ),
                          ),
                          Text(
                            '(' +
                                controller.medicationList[index].subtitle.fold(
                                    '',
                                    (previousValue, element) =>
                                        previousValue + ' ' + element + ',') +
                                ')',
                            //textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.008,
                          ),
                        ],
                      ),
                      subtitle: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.watch_later_sharp,
                                color: Color(0xFFCBB26B),
                                size: 15,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.01,
                              ),
                              Text(
                                controller.medicationList[index].due,
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF89889B),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                MdiIcons.flaskEmpty,
                                color: Color(0xFFCBB26B),
                                size: 15,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.01,
                              ),
                              Text(
                                controller.medicationList[index].mass + 'mg',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF89889B),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                MdiIcons.clipboard,
                                color: Color(0xFFCBB26B),
                                size: 15,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.01,
                              ),
                              Text(
                                controller.medicationList[index].dosage,
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF89889B),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // AddGlucoseDialog(BuildContext context) {
  //   final _timecontroller = TextEditingController();
  //   showDialog(
  //     context: context,
  //     builder: (context) =>
  //         // title: 'Glucometer Glucose\n Level',
  //         // titleStyle: TextStyle(
  //         //   fontFamily: 'Inter',
  //         //   fontSize: 16,
  //         //   color: Color(0xFF0C056D),
  //         //   fontWeight: FontWeight.w600,
  //         // ),
  //         Dialog(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         //crossAxisAlignment: CrossAxisAlignment.stretch,
  //         children: [
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               Text(
  //                 'Glucometer Glucose\n Level',
  //                 style: TextStyle(
  //                   fontFamily: 'Inter',
  //                   fontSize: 16,
  //                   color: Color(0xFF0C056D),
  //                   fontWeight: FontWeight.w600,
  //                 ),
  //               ),
  //               SizedBox(width: MediaQuery.of(context).size.width * 0.01),
  //               Icon(Icons.close_rounded),
  //             ],
  //           ),
  //           TextFormField(
  //             keyboardType: TextInputType.number,
  //             decoration: InputDecoration(
  //               floatingLabelBehavior: FloatingLabelBehavior.always,
  //               focusedBorder: UnderlineInputBorder(
  //                   borderSide: BorderSide(
  //                 color: Color(0xFF89889B),
  //               )),
  //               label: Text(
  //                 'Glucose Level',
  //                 style: TextStyle(
  //                   fontFamily: 'Inter',
  //                   fontSize: 15,
  //                   color: Color(0xFF89889B),
  //                   fontWeight: FontWeight.w400,
  //                 ),
  //               ),
  //               hintText: 'Enter Glucose Level',
  //               hintStyle: TextStyle(
  //                 fontFamily: 'Inter',
  //                 fontSize: 14,
  //                 color: Color(0xFF89889B),
  //                 fontWeight: FontWeight.w400,
  //               ),
  //             ),
  //           ),
  //           TextFormField(
  //             enabled: true,
  //             controller: _timecontroller,
  //             keyboardType: TextInputType.none,
  //             decoration: InputDecoration(
  //               floatingLabelBehavior: FloatingLabelBehavior.always,
  //               focusedBorder: UnderlineInputBorder(
  //                   borderSide: BorderSide(
  //                 color: Color(0xFF89889B),
  //               )),
  //               suffixIcon: IconButton(
  //                 onPressed: () {
  //                   showCupertinoModalPopup(
  //                     context: context,
  //                     builder: (context) => CupertinoActionSheet(
  //                       actions: [
  //                         buildTimePicker(context, controller),
  //                       ],
  //                       cancelButton: CupertinoActionSheetAction(
  //                         child: Text('Done'),
  //                         onPressed: () {
  //                           _timecontroller.text =
  //                               controller.selectedTime.value;
  //                         },
  //                       ),
  //                     ),
  //                   );
  //                 },
  //                 icon: Icon(
  //                   Icons.watch_later_outlined,
  //                   color: Color(0xFF89889B),
  //                 ),
  //               ),
  //               label: Text(
  //                 'Time',
  //                 style: TextStyle(
  //                   fontFamily: 'Inter',
  //                   fontSize: 15,
  //                   color: Color(0xFF89889B),
  //                   fontWeight: FontWeight.w400,
  //                 ),
  //               ),
  //               hintText: 'Select Time',
  //               hintStyle: TextStyle(
  //                 fontFamily: 'Inter',
  //                 fontSize: 14,
  //                 color: Color(0xFF89889B),
  //                 fontWeight: FontWeight.w400,
  //               ),
  //             ),
  //           ),
  //           SizedBox(
  //             height: MediaQuery.of(context).size.height * 0.01,
  //           ),
  //           RaisedButton(
  //             padding: EdgeInsets.zero,
  //             onPressed: () {},
  //             shape: RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(80.0),
  //             ),
  //             child: Ink(
  //               decoration: BoxDecoration(
  //                 // ignore: prefer_const_constructors
  //                 gradient: LinearGradient(
  //                   colors: [(Color(0xFF11079E)), (Color(0xFF594FE1))],
  //                   begin: Alignment.centerLeft,
  //                   end: Alignment.centerRight,
  //                 ),
  //                 borderRadius: BorderRadius.circular(15.0),
  //               ),
  //               child: Container(
  //                 constraints: BoxConstraints(maxWidth: 100.0, minHeight: 40.0),
  //                 alignment: Alignment.center,
  //                 child: Text(
  //                   'Save',
  //                   textAlign: TextAlign.center,
  //                   style: TextStyle(color: Colors.white),
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget buildTimePicker(BuildContext context, HomeController controller) =>
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.18,
        child: CupertinoDatePicker(
            //initialDateTime: this.dateTime,
            mode: CupertinoDatePickerMode.time,
            //use24hFormat: false,
            onDateTimeChanged: (dateTime) {
              controller.selectedTime.value =
                  DateFormat.jm().format(DateTime.parse(dateTime.toString()));
            }),
      );
}

class GlucoseCard extends StatelessWidget {
  late String time;
  late String date;
  late String month;
  late String title;
  late int level;
  GlucoseCard({
    required this.time,
    required this.date,
    required this.month,
    required this.level,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      // width: MediaQuery.of(context).size.width,
      // height: 96,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 9.0,
          top: 9.0,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.026,
                ),
                Icon(
                  Icons.watch_later,
                  color: Color(0xFFBE9E45),
                  size: 17,
                ),
                Text(
                  time,
                  style: TextStyle(
                      color: Color(0xFF89889B),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.026,
                ),
                Icon(
                  Icons.calendar_month,
                  color: Color(0xFFBE9E45),
                  size: 17,
                ),
                Text(
                  date + ' ' + month,
                  style: TextStyle(
                      color: Color(0xFF89889B),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset('images/red-blood-cells.png'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.015,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF11079E),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          level.toString() + ' mg/dl ',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFEF5261),
                          ),
                        ),
                        Icon(
                          Icons.arrow_upward,
                          size: 20,
                          color: Color(0xFFEF5261),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Text(
                          'Recommended (70 - 240 mg/dl)',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF89889B),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
