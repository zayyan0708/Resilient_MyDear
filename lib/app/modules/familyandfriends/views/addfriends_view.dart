// ignore_for_file: prefer_const_constructors, deprecated_member_use, must_be_immutable, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_dear_app/app/data/myfriends.dart';

class AddfriendsView extends GetView {
  const AddfriendsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9FF),
      appBar: AppBar(
        elevation: 1,
        foregroundColor: Color(0xFF0C056D),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 16.0, right: 16, bottom: 10, top: 8),
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
          'Add a Family / Friend',
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'Invite anyone outside the app.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFF89889B)),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.link_outlined,
                  color: Color(0xFF11079E),
                ),
                tileColor: Color(0xFFFFFFFF),
                title: Transform.translate(
                  offset: Offset(MediaQuery.of(context).size.width * -0.065, 0),
                  child: Text(
                    'dear2me.com/app',
                    style: TextStyle(
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Color(0xFF11079E)),
                  ),
                ),
                trailing: SizedBox(
                  height: 44,
                  width: 44,
                  child: FittedBox(
                    child: FloatingActionButton(
                      elevation: 0,
                      onPressed: () {},
                      backgroundColor: Color(0xFF11079E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(
                        Icons.share_outlined,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2),
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
                        trailing: IsFriendButton(index),
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

  Obx IsFriendButton(int index) {
    return Obx(
      () => myfriends[index].isFriend.value
          ? RaisedButton(
              elevation: 0,
              padding: EdgeInsets.zero,
              onPressed: () {
                myfriends[index].isFriend.value =
                    !myfriends[index].isFriend.value;
                //Navigator.pop(context);
                Get.snackbar(
                  duration: Duration(seconds: 4),
                  shouldIconPulse: false,
                  icon: Icon(
                    MdiIcons.checkboxMarkedCircleOutline,
                    color: Color(0xFFBE9E45),
                  ),
                  margin: EdgeInsets.all(8),
                  'Add request successfully sent!',
                  titleText: Text('Add request successfully sent!',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                  messageText: Text('Today 10:30PM',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          color: Color(0xFF9FAED7),
                          fontSize: 11,
                          fontWeight: FontWeight.w400)),
                  'Today 10:30PM',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Color(0xFF11079E),
                  backgroundGradient: LinearGradient(
                    colors: [(Color(0xFF11079E)), (Color(0xFF594FE1))],
                    // begin: Alignment.centerLeft,
                    // end: Alignment.centerRight,
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Color(0xFF11079E))),
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  color: Colors.white,
                  constraints: BoxConstraints(maxWidth: 100.0, maxHeight: 30.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Add',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF11079E),
                    ),
                  ),
                ),
              ),
            )
          : RaisedButton(
              elevation: 0,
              padding: EdgeInsets.zero,
              onPressed: () {
                myfriends[index].isFriend.value =
                    !myfriends[index].isFriend.value;
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.grey)),
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  color: Colors.white,
                  constraints: BoxConstraints(maxWidth: 100.0, maxHeight: 30.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Cancel',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
    );
  }
}
