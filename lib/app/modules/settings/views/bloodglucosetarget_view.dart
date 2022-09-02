// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, must_be_immutable, camel_case_types, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BloodglucosetargetView extends GetView {
  const BloodglucosetargetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        //leading: Icon(Ic
        //forons.arrow_back),
        foregroundColor: Color(0xFF0C056D),
        title: const Text(
          'Blood Glucose Target',
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
          child: Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.015,
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
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
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: MediaQuery.of(context).size.height * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13.3),
                            ),
                            child: Stack(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 30.0),
                                      child: Text(
                                        'Blood Glucose Target',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xFF0C056D),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Padding(
                                        padding:
                                            EdgeInsets.only(left: 10, top: 10),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                    ),
                                    dialogTextField(
                                        labeltext: 'Blood Sugar Target',
                                        hinttext: 'Enter Glucose Level'),
                                    dialogTextField(
                                        labeltext: 'Alert Trigger (High)',
                                        hinttext: 'Enter Glucose Level'),
                                    dialogTextField(
                                        labeltext: 'Alert Trigger (Low)',
                                        hinttext: 'Enter Glucose Level'),
                                    dialogTextField(
                                        labeltext: 'Warning Trigger (High)',
                                        hinttext: 'Enter Glucose Level'),
                                    dialogTextField(
                                        labeltext: 'Warning Trigger (Low)',
                                        hinttext: 'Enter Glucose Level'),
                                    RaisedButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(80.0),
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
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Container(
                                          constraints: BoxConstraints(
                                              maxWidth: 100.0, minHeight: 40.0),
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Save',
                                            textAlign: TextAlign.center,
                                            style:
                                                TextStyle(color: Colors.white),
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
                    height: MediaQuery.of(context).size.height * 0.08,
                    margin: EdgeInsets.only(bottom: 2.0),
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.011,
                        left: MediaQuery.of(context).size.width * 0.04,
                        right: MediaQuery.of(context).size.width * 0.04),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                    ),
                    child: ListTile(
                      tileColor: Colors.white,
                      title: Text(
                        'Blood Sugar Target',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF89889B),
                        ),
                      ),
                      trailing: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.water_drop_rounded,
                                size: 20,
                                color: Color(0xFFCBB26B),
                              ),
                            ),
                            TextSpan(
                              text: " 110 mg/dl",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF89889B),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
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
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: MediaQuery.of(context).size.height * 0.3,
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
                                        Navigator.pop(context);
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 30.0),
                                      child: Text(
                                        'Blood Glucose Target',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xFF0C056D),
                                        ),
                                      ),
                                    ),
                                    dialogTextField(
                                        labeltext: 'Sensitivity',
                                        hinttext: 'Enter Glucose Level'),
                                    RaisedButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(80.0),
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
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        child: Container(
                                          constraints: BoxConstraints(
                                              maxWidth: 100.0, minHeight: 40.0),
                                          alignment: Alignment.center,
                                          child: Text(
                                            'Save',
                                            textAlign: TextAlign.center,
                                            style:
                                                TextStyle(color: Colors.white),
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
                    height: MediaQuery.of(context).size.height * 0.08,
                    margin: EdgeInsets.only(bottom: 2.0),
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.011,
                        left: MediaQuery.of(context).size.width * 0.04,
                        right: MediaQuery.of(context).size.width * 0.04),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                    ),
                    child: ListTile(
                      tileColor: Colors.white,
                      title: Text(
                        'Sensitivity',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF89889B),
                        ),
                      ),
                      trailing: RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.water_drop_rounded,
                                size: 20,
                                color: Color(0xFFCBB26B),
                              ),
                            ),
                            TextSpan(
                              text: " 50 mg/dl",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF89889B),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class dialogTextField extends StatelessWidget {
  dialogTextField({
    required this.labeltext,
    required this.hinttext,
  });
  var labeltext;
  var hinttext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Text(
          labeltext,
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: Color(0xFF89889B),
            fontSize: 17,
          ),
        ),
        hintText: hinttext,
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
    );
  }
}
