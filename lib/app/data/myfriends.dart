// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FriendsAndfamily {
  Text name;
  var image;
  RxBool isFriend;
  FriendsAndfamily(
      {required this.isFriend, required this.name, required this.image});
}

List<FriendsAndfamily> myfriends = [
  FriendsAndfamily(
    isFriend: false.obs,
    name: Text(
      "Maria Khan",
      style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          color: Color(0xFF0C056D),
          fontSize: 14),
    ),
    image: DecorationImage(
      image: AssetImage(
        'images/profile1.png',
      ),
      fit: BoxFit.cover,
    ),
  ),
  FriendsAndfamily(
    isFriend: true.obs,
    name: Text(
      "Jackson Paul",
      style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          color: Color(0xFF0C056D),
          fontSize: 14),
    ),
    image: DecorationImage(
      image: AssetImage(
        'images/profile3.png',
      ),
      fit: BoxFit.cover,
    ),
  ),
  FriendsAndfamily(
    isFriend: false.obs,
    name: Text(
      "Misha Khan",
      style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          color: Color(0xFF0C056D),
          fontSize: 14),
    ),
    image: DecorationImage(
      image: AssetImage(
        'images/profile2.png',
      ),
      fit: BoxFit.cover,
    ),
  ),
  FriendsAndfamily(
    isFriend: true.obs,
    name: Text(
      "Ellen",
      style: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
          color: Color(0xFF0C056D),
          fontSize: 14),
    ),
    image: DecorationImage(
      image: AssetImage(
        'images/profile4.png',
      ),
      fit: BoxFit.cover,
    ),
  ),
];
