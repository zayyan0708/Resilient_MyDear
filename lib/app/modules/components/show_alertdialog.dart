// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

void showAlertDialog(BuildContext context, String ttle, String ms) {
  String title = ttle;
  String msg = ms;
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          //shape: ,
          backgroundColor: Colors.transparent,
          child: Container(
            padding: MediaQuery.of(context).viewInsets +
                const EdgeInsets.symmetric(vertical: 24.0),
            width: MediaQuery.of(context).size.width / 1.5,
            height: MediaQuery.of(context).size.height / 3.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.white),
            child: Column(children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF07033C),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Divider(
                color: Colors.grey,
                height: 5,
                thickness: 2,
                indent: 0,
                endIndent: 0,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Text(
                  msg,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    elevation: 0,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: const [(Color(0xFF11079E)), (Color(0xFF594FE1))],
                          // begin: Alignment.centerLeft,
                          // end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: 100.0, minHeight: 40.0),
                        alignment: Alignment.center,
                        child: Text(
                          'Yes',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  RaisedButton(
                    elevation: 0,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
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
                        constraints:
                            BoxConstraints(maxWidth: 100.0, minHeight: 40.0),
                        alignment: Alignment.center,
                        child: Text(
                          'No',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ]),
          ),
        );
      });
}
