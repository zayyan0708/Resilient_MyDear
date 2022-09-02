// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_dear_app/app/modules/settings/controllers/settings_controller.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

class ManagedevicesView extends GetView<SettingsController> {
  const ManagedevicesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.SEARCHDEVICES);
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
      appBar: AppBar(
        elevation: 0.0,
        //leading: Icon(Ic
        //forons.arrow_back),
        foregroundColor: Color(0xFF0C056D),
        title: const Text(
          'Manage Devices',
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
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        margin: EdgeInsets.only(bottom: 2.0),
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.011,
                            bottom: MediaQuery.of(context).size.height * 0.011,
                            left: MediaQuery.of(context).size.width * 0.04,
                            right: MediaQuery.of(context).size.width * 0.03),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                        ),
                        child: ListTile(
                          title: Text(
                            'CGM-42562',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF07033C),
                            ),
                          ),
                          trailing: controller.ispaired.value
                              ? GestureDetector(
                                  onTap: () {
                                    controller.ispaired.value = false;
                                  },
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.check_circle,
                                            color: Color(0xFFBE9E45)),
                                        Text(
                                          'Pair',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xFFBE9E45),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    controller.ispaired.value = true;
                                  },
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                    width: MediaQuery.of(context).size.width *
                                        0.15,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFBF9F4),
                                        borderRadius:
                                            BorderRadius.circular(6.5)),
                                    child: Center(
                                      child: Text(
                                        'Pair',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFFBE9E45),
                                        ),
                                      ),
                                    ),
                                  ),
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
