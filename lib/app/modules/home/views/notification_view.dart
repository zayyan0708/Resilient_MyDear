// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_dear_app/app/modules/home/controllers/home_controller.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

class NotificationView extends GetView<HomeController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFF0C056D),
        elevation: 1,
        title: const Text(
          'Notifications',
          style: TextStyle(
              fontFamily: 'SF',
              fontSize: 17,
              color: Color(0xFF0C056D),
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xFFF9F9FF),
        child: Column(
          children: [
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
                    'Today',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF89889B),
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
                        'Mark all as Read',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF89889B),
                          fontFamily: 'Inter',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    onTap: () {
                      Get.toNamed(Routes.AlERTMYDEAR);
                      //print('sign in clicked');
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              //padding: EdgeInsets.all(0),
              //margin: EdgeInsets.only(bottom: 50.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              color: Color(0xFFF9F9FF),
              child: ListView.builder(
                itemCount: controller.notificationList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                    ),
                    child: ListTile(
                      leading: Icon(
                        MdiIcons.circleMedium,
                        color: Color(0xFFBE9E45),
                      ),
                      trailing: Text(
                        controller.notificationList[index].time,
                        style: TextStyle(
                          color: Color(0xFF89889B),
                          fontFamily: 'Inter',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      title: Text(
                        controller.notificationList[index].text,
                        style: TextStyle(
                          color: Color(0xFF07033C),
                          fontFamily: 'Inter',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
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
}
