// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_dear_app/app/data/myfriends.dart';
import 'package:my_dear_app/app/modules/components/bottom_navigation.dart';
import 'package:my_dear_app/app/modules/components/custom_appbar.dart';
import 'package:my_dear_app/app/modules/components/show_alertdialog.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

import '../controllers/familyandfriends_controller.dart';

class FamilyandfriendsView extends GetView<FamilyandfriendsController> {
  const FamilyandfriendsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF9F9FF),
      appBar: CustomAppBar(controller.title, context),
      bottomNavigationBar: BottomNavigation(
        isHome: false,
        isMedication: false,
        isFamily: true,
        isReport: false,
        isSetting: false,
      ),
      //floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.ADDFRIENDS);
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
                  itemCount: myfriends.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                      ),
                      child: ListTile(
                        // contentPadding: EdgeInsets.only(
                        //     top: MediaQuery.of(context).size.height * 0.015),
                        title: Transform.translate(
                          offset: Offset(
                              MediaQuery.of(context).size.width * -0.085, 0),
                          child: myfriends[index].name,
                        ),
                        //horizontalTitleGap: 0,
                        leading: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            image: myfriends[index].image,
                          ),
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(
                        //       top: MediaQuery.of(context).size.height * 0.01),
                        //   height: MediaQuery.of(context).size.height * 0.2,
                        //   width: MediaQuery.of(context).size.width * 0.2,
                        //   child: FittedBox(
                        //     child: myfriends[index].image,
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                        trailing: GestureDetector(
                          onTap: () {
                            showAlertDialog(context, 'Remove Family/Friend',
                                'Are you sure you want to remove as Family/Friend?');
                          },
                          child: Text(
                            "Remove",
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF89889B),
                                fontSize: 13),
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
      ),
    );
  }
}
