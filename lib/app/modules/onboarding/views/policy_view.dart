// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_dear_app/app/modules/components/gradient_button.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';

class PolicyView extends GetView {
  const PolicyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        //leading: Icon(Ic
        //forons.arrow_back),
        foregroundColor: Color(0xFF0C056D),
        title: const Text(
          'Privacy Policy For Minors',
          style: TextStyle(
              color: Color(0xFF0C056D),
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xFFF4F3FF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white,
                  height: 686,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 21, right: 19),
                        child: Text(
                          'This is dummy copy. It is not meant to be read. It has been placed here solely to demonstrate the look and feel of finished, typeset text. Only for show. He who searches for meaning here will be sorely disappointed.  These words are here to provide the reader with a basic impression of how actual text will appear in its final presentation. Think of them merely as actors on a paper stage, in a performance devoid of content yet rich in form. That being the case, there is really no point in your continuing to read them. After all, you have many other things you should be doing.',
                          style: TextStyle(
                            color: Color(0xFF07033C),
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 21, right: 19),
                        child: Text(
                          'It breaks up the intimidating blocks of text and makes the page more inviting to read, which is again ironic, considering this is dummy copy. It is not meant to be read. Someday this space will be occupied by real copy that is meant to be read. What other form of filler would dare be so politically incorrect? This is dummy copy. It is not meant to be read. Good thing.',
                          style: TextStyle(
                            color: Color(0xFF07033C),
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 21, right: 19),
                        child: Text(
                          'This is dummy copy. It is not meant to be read. Accordingly, it is difficult to figure out when to end it. If this were real copy, it would have ended long ago, because‚Äîas we all know‚Äîno one reads body copy, and even fewer read body copy this long. But then, this is dummy copy. It is not meant to be read. Period.',
                          style: TextStyle(
                            color: Color(0xFF07033C),
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 21, right: 19),
                        child: Text(
                          'It breaks up the intimidating blocks of text and makes the page more inviting to read, which is again ironic, considering this is dummy copy. It is not meant to be read. Someday this space will be occupied by real copy that is meant to be read. What other form of filler would dare be so politically incorrect? This is dummy copy. It is not meant to be read. Good thing.',
                          style: TextStyle(
                            color: Color(0xFF07033C),
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GradientButton(
                        text: 'I Agree',
                        onPressedFunc: () {
                          Get.toNamed(Routes.HOME);
                        },
                      ),
                    ],
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
