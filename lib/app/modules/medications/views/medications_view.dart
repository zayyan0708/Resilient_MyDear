// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables, deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:my_dear_app/app/modules/components/bottom_navigation.dart';
import 'package:my_dear_app/app/modules/components/custom_appbar.dart';
import 'package:my_dear_app/app/modules/components/show_alertdialog.dart';
import 'package:my_dear_app/app/modules/home/models/recent_glucose.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

import '../controllers/medications_controller.dart';

class MedicationsView extends GetView<MedicationsController> {
  const MedicationsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF9F9FF),
      appBar: CustomAppBar(controller.title.value, context),
      bottomNavigationBar: BottomNavigation(
        isHome: false,
        isMedication: true,
        isFamily: false,
        isReport: false,
        isSetting: false,
      ),
      //floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.ADDMEDICATIONS);
        },
        backgroundColor: Color(0xFF594FE1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 16),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                color: Color(0xFFF9F9FF),
                child: ListView.builder(
                  itemCount: medicationList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          ShowMedicineDetails(
                              context,
                              medicationList[index].title,
                              medicationList[index].subtitle,
                              medicationList[index].dosage,
                              medicationList[index].mass,
                              medicationList[index].due);
                        },
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
                                medicationList[index].title,
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF0C056D),
                                ),
                              ),
                              Text(
                                '(' +
                                    medicationList[index].subtitle.fold(
                                        '',
                                        (previousValue, element) =>
                                            previousValue +
                                            ' ' +
                                            element +
                                            ',') +
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
                                height:
                                    MediaQuery.of(context).size.height * 0.008,
                              ),
                            ],
                          ),
                          subtitle: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.watch_later_sharp,
                                    color: Color(0xFFCBB26B),
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                  Text(
                                    medicationList[index].due,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    MdiIcons.flaskEmpty,
                                    color: Color(0xFFCBB26B),
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                  Text(
                                    medicationList[index].mass + 'mg',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    MdiIcons.clipboard,
                                    color: Color(0xFFCBB26B),
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.01,
                                  ),
                                  Text(
                                    medicationList[index].dosage,
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
                              onPressed: () {
                                BottomSheet(context);
                              }),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> ShowMedicineDetails(
    BuildContext context,
    String title,
    List<String> subtitle,
    String dosage,
    String mass,
    String due,
  ) {
    return showCupertinoModalBottomSheet(
      context: context,
      builder: (context) => Material(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.4,
          padding: MediaQuery.of(context).viewInsets + EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                color: Colors.grey,
                height: 10,
                thickness: 4,
                indent: 150,
                endIndent: 150,
              ),
              ListTile(
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
                      title,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0C056D),
                      ),
                    ),
                    Text(
                      '(' +
                          subtitle.fold(
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
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width * 0.01,
                        // ),
                        Text(
                          due,
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
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width * 0.008,
                        // ),
                        Text(
                          mass + 'mg',
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
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width * 0.01,
                        // ),
                        Text(
                          dosage,
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
                    onPressed: () {
                      BottomSheet(context);
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  Text(
                    'Duration: ',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0C056D),
                    ),
                  ),
                  Text(
                    '14 days',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFBE9E45),
                    ),
                  ),
                ],
              ),
              Text(
                'Starting from 3rd April',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFBE9E45),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'Additional Notes:',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0C056D),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                'This is dummy. It is not meant to be read. It is placed here solely to demonstrate the look and feel of finished typeset text. Only for show.',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF89889B),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> BottomSheet(BuildContext context) {
    return showCupertinoModalBottomSheet(
      context: context,
      builder: (context) => Material(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.3,
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                color: Colors.grey,
                height: 10,
                thickness: 4,
                indent: 150,
                endIndent: 150,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF89889B),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.16,
                    ),
                    Text(
                      'Select an Action',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF07033C),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.EDITMEDICATIONS);
                },
                child: ListTile(
                  title: Text(
                    'Edit',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showAlertDialog(context, 'Delete Medicine',
                      'Are you sure you want to delete this medicine?');
                },
                child: ListTile(
                  title: Text(
                    'Delete',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
