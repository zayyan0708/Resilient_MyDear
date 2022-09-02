// ignore_for_file: prefer_const_constructors, unused_import, must_be_immutable, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_dear_app/app/modules/components/bottom_navigation.dart';
import 'package:my_dear_app/app/modules/components/custom_appbar.dart';
import 'package:my_dear_app/app/modules/components/show_alertdialog.dart';
import 'package:my_dear_app/app/modules/currentuser/views/currentuser_view.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF9F9FF),
        appBar: AppBar(
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                icon: Icon(Icons.notifications_none_rounded),
                onPressed: () {
                  Get.toNamed(Routes.NOTIFICATION);
                },
                color: Color(0xFF0C056D),
              ),
            ),
          ],
          leading: GestureDetector(
            onTap: () {
              CurrentUserInfo(context);
            },
            child: Container(
              padding: EdgeInsets.only(
                left: 7,
                top: 7,
                bottom: 3,
              ),
              height: 35,
              width: 35,
              child: Image.asset(
                'images/homeProfile.png',
              ),
            ),
          ),
          backgroundColor: Colors.white,
          title: Text(
            controller.title.value,
            style: TextStyle(
                fontFamily: 'SF',
                fontSize: 17,
                color: Color(0xFF0C056D),
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigation(
          isHome: false,
          isMedication: false,
          isFamily: false,
          isReport: false,
          isSetting: true,
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
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.002,
                    ),
                    color: Colors.white,
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.011,
                        bottom: MediaQuery.of(context).size.height * 0.011,
                        left: MediaQuery.of(context).size.width * 0.04),
                    height: MediaQuery.of(context).size.height * 0.065,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.1,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFBF9F4),
                                  borderRadius: BorderRadius.circular(6.5)),
                              child: Center(
                                child: Icon(
                                  MdiIcons.bellOutline,
                                  color: Color(0xFFBE9E45),
                                  size: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.04,
                              ),
                              child: Text(
                                'Push Notifications',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF07033C),
                                ),
                              ),
                            ),
                          ],
                        ),
                        // Transform.scale(
                        //   scale: 1.5,
                        //   child: Switch.adaptive(
                        //     value: controller.notiswitch.value,
                        //     onChanged: (value) {
                        //       controller.notiswitch.value = value;
                        //     },
                        //     // focusColor: Color(0xFFBE9E45),
                        //     activeColor: Color(0xFFBE9E45),
                        //     inactiveThumbColor: Color(0xFFBE9E45),
                        //     inactiveTrackColor:
                        //         Color.fromARGB(255, 229, 229, 227),
                        //   ),
                        // ),
                        Obx(
                          () => CupertinoSwitch(
                            value: controller.notiswitch.value,
                            onChanged: (value) {
                              controller.notiswitch.value = value;
                            },
                            thumbColor: Color(0xFFBE9E45),
                            activeColor: Color(0xFFFBF9F4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SettingOptions(
                    title: 'Change Password',
                    icon: Iconsax.key4,
                    onPressed: () {
                      Get.toNamed(Routes.CHANGEPASSWORD);
                    },
                  ),
                  SettingOptions(
                    title: 'Blood Glucose Targets',
                    icon: MdiIcons.waterOutline,
                    onPressed: () {
                      Get.toNamed(Routes.BLOODGLUCOSETARGET);
                    },
                  ),
                  SettingOptions(
                    title: 'Reminders',
                    icon: MdiIcons.timerOutline,
                    onPressed: () {
                      Get.toNamed(Routes.REMINDERS);
                    },
                  ),
                  SettingOptions(
                    title: 'Glucose Log',
                    icon: MdiIcons.clockTimeFourOutline,
                    onPressed: () {},
                  ),
                  SettingOptions(
                    title: 'Manage Devices',
                    icon: MdiIcons.appleSafari,
                    onPressed: () {
                      Get.toNamed(Routes.MANAGEDEVICES);
                    },
                  ),
                  SettingOptions(
                    title: 'Alert History',
                    icon: Iconsax.warning_24,
                    onPressed: () {
                      Get.toNamed(Routes.ALERTHISTORY);
                    },
                  ),
                  SettingOptions(
                    title: 'FAQs',
                    icon: MdiIcons.informationOutline,
                    onPressed: () {
                      Get.toNamed(Routes.FAQS);
                    },
                  ),
                  SettingOptions(
                    title: 'Terms & Conditions',
                    icon: Iconsax.note_14, //MdiIcons.noteTextOutline,
                    onPressed: () {
                      Get.toNamed(Routes.TERMSANDCONDITIONS);
                    },
                  ),
                  SettingOptions(
                    title: 'Privacy Policy',
                    icon: MdiIcons.shieldCheckOutline,
                    onPressed: () {
                      Get.toNamed(Routes.PRIVACYANDPOLICY);
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  SettingOptions(
                    title: 'Delete Account',
                    icon: MdiIcons.trashCanOutline,
                    onPressed: () {
                      showAlertDialog(context, 'Delete Account',
                          'Are you sure you want to delete this account?');
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class SettingOptions extends StatelessWidget {
  var title;
  var icon;
  var onPressed;
  SettingOptions(
      {required this.title, required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.002,
        ),
        color: Colors.white,
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.011,
            bottom: MediaQuery.of(context).size.height * 0.011,
            left: MediaQuery.of(context).size.width * 0.04),
        height: MediaQuery.of(context).size.height * 0.065,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.1,
              decoration: BoxDecoration(
                  color: Color(0xFFFBF9F4),
                  borderRadius: BorderRadius.circular(6.5)),
              child: Center(
                child: Icon(
                  icon,
                  color: Color(0xFFBE9E45),
                  size: 20,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF07033C),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
