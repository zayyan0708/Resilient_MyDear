// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, use_key_in_widget_constructors, unused_local_variable, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

class BottomNavigation extends StatelessWidget {
  late var isHome;
  late var isMedication;
  late var isFamily;
  late var isReport;
  late var isSetting;
  BottomNavigation(
      {required this.isHome,
      required this.isFamily,
      required this.isMedication,
      required this.isReport,
      required this.isSetting});

  @override
  Widget build(BuildContext context) {
    var homeColor = isHome ? Color(0xFFBE9E45) : Colors.white;
    var MedicationColor = isMedication ? Color(0xFFBE9E45) : Colors.white;
    var familyColor = isFamily ? Color(0xFFBE9E45) : Colors.white;
    var settingColor = isSetting ? Color(0xFFBE9E45) : Colors.white;
    var ReportColor = isReport ? Color(0xFFBE9E45) : Colors.white;
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(23),
          topRight: Radius.circular(23),
        ),
        color: Color(0xFF11079E),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.HOME);
              },
              child: Column(
                children: [
                  Icon(
                    Iconsax.home,
                    color: homeColor,
                    size: 28,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Home',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: homeColor,
                      )),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.MEDICATIONS);
              },
              child: Column(
                children: [
                  Icon(
                    MdiIcons.pillMultiple,
                    color: MedicationColor,
                    size: 28,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Medication',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: MedicationColor,
                      )),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.FAMILYANDFRIENDS);
              },
              child: Column(
                children: [
                  Icon(
                    Iconsax.people4,
                    color: familyColor,
                    size: 28,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Friends/Family',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: familyColor,
                      )),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.REPORTS);
              },
              child: Column(
                children: [
                  Icon(
                    Icons.assessment_outlined,
                    color: ReportColor,
                    size: 28,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Report',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: ReportColor,
                      )),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.SETTINGS);
              },
              child: Column(
                children: [
                  Icon(
                    Iconsax.setting_2,
                    color: settingColor,
                    size: 28,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Setting',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: settingColor,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
