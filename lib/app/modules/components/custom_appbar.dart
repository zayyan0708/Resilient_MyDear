// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import "package:get/get.dart";
import 'package:my_dear_app/app/modules/currentuser/controllers/currentuser_controller.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';
import 'package:my_dear_app/app/modules/currentuser/views/currentuser_view.dart';

AppBar CustomAppBar(String title, BuildContext context) {
  Get.put(CurrentuserController());
  return AppBar(
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
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(56),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 16.0, right: 16, bottom: 10, top: 8),
        child: TextFormField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Color(0xFF767680),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Color(0xFF767680),
              ),
            ),
            filled: true,
            fillColor: Color(0xFFF9F9FF),
            contentPadding: EdgeInsets.zero,
            hintText: 'Search',
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    ),
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: TextStyle(
          fontFamily: 'SF',
          fontSize: 17,
          color: Color(0xFF0C056D),
          fontWeight: FontWeight.w600),
    ),
    centerTitle: true,
  );
}
