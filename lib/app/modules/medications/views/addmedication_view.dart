// ignore_for_file: prefer_const_constructors, unused_import, prefer_const_literals_to_create_immutables, must_be_immutable, use_key_in_widget_constructors

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:my_dear_app/app/modules/components/custom_bottomsheet.dart';
import 'package:my_dear_app/app/modules/components/gradient_button.dart';
import 'package:my_dear_app/app/modules/components/textfield_widget.dart';
import 'package:my_dear_app/app/modules/medications/controllers/medications_controller.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

class AddmedicationView extends GetView<MedicationsController> {
  const AddmedicationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final timecontroller = TextEditingController();
    final typecontroller = TextEditingController();
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF9F9FF),
      appBar: AppBar(
        foregroundColor: Color(0xFF0C056D),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Add Medications',
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
                maxHeight: MediaQuery.of(context).size.height,
                maxWidth: MediaQuery.of(context).size.width,
              ),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextfieldWidget(
                      labeltext: 'Medication Name',
                      hinttext: 'Drug Name',
                    ),
                    TextFormField(
                      controller: typecontroller,
                      keyboardType: TextInputType.none,
                      cursorColor: Color(0xFF89889B),
                      decoration: InputDecoration(
                        hintText: 'Drug Type',
                        hintStyle: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          color: Color(0xFF89889B),
                          fontWeight: FontWeight.w400,
                        ),
                        labelText: 'Mediactions Type',
                        labelStyle: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          color: Color(0xFF89889B),
                          fontWeight: FontWeight.w400,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF89889B),
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            CustomizeBottomSheet(
                                context,
                                [
                                  'Capsules',
                                  'Drops',
                                  'Inhaler',
                                  'Injection',
                                  'Liquid',
                                ],
                                typecontroller);
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xFF89889B),
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.none,
                      cursorColor: Color(0xFF89889B),
                      controller: timecontroller,
                      decoration: InputDecoration(
                        hintText: 'e.g Before Breakfast',
                        hintStyle: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          color: Color(0xFF89889B),
                          fontWeight: FontWeight.w400,
                        ),
                        labelText: 'Time',
                        labelStyle: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          color: Color(0xFF89889B),
                          fontWeight: FontWeight.w400,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF89889B),
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            CustomizeBottomSheet(
                              context,
                              [
                                'Before Breakfast',
                                'After Breakfast',
                                'Before Lunch',
                                'After Lunch',
                                'Before Dinner',
                                'After Dinner',
                              ],
                              timecontroller,
                            );
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xFF89889B),
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () => Row(
                        children: [
                          Text(
                            'Tablets Quantity',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 13,
                              color: Color(0xFF89889B),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                          ),
                          IconButton(
                            onPressed: () {
                              controller.tablet_count.value > 0
                                  ? controller.tablet_count.value--
                                  : controller.tablet_count.value = 0;
                            },
                            icon: Icon(Icons.remove),
                            color: Color(0xFF89889B),
                          ),
                          Text(
                            controller.tablet_count.value.toString(),
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          IconButton(
                              onPressed: () {
                                controller.tablet_count.value++;
                              },
                              icon: Icon(
                                Icons.add,
                                color: Color(0xFF89889B),
                              )),
                        ],
                      ),
                    ),
                    TextfieldWidget(
                      labeltext: 'Dosage',
                      hinttext: 'Dosage',
                    ),
                    TextfieldWidget(
                      labeltext: 'Duration',
                      hinttext: 'Days Count',
                    ),
                    TextFormField(
                      cursorColor: Color(0xFF89889B),
                      decoration: InputDecoration(
                        hintText: 'Schedule Date',
                        hintStyle: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          color: Color(0xFF89889B),
                          fontWeight: FontWeight.w400,
                        ),
                        labelText: 'Schedule',
                        labelStyle: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          color: Color(0xFF89889B),
                          fontWeight: FontWeight.w400,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF89889B),
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.watch_later_outlined,
                            color: Color(0xFF89889B),
                          ),
                        ),
                      ),
                    ),
                    TextfieldWidget(
                      labeltext: 'Add Notes',
                      hinttext: 'Notes',
                    ),
                    GradientButton(
                      text: "ADD",
                      onPressedFunc: () {
                        Get.toNamed(Routes.MEDICATIONS);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
