// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, deprecated_member_use

import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController
    with SingleGetTickerProviderMixin {
  var title = "Settings".obs;
  var notiswitch = false.obs;
  var pass_check = false.obs;
  var ispaired = false.obs; //manage device view
  final count = 0.obs;
  late final AnimationController animationcontroller;
  @override
  void onInit() {
    super.onInit();
    animationcontroller =
        AnimationController(duration: Duration(minutes: 1), vsync: this);
  }

  void increment() => count.value++;
}
