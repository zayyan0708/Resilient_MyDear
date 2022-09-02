// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ReportsController extends GetxController {
  var selectedOption = 'Today'.obs;
  var selectedLogTime1 = ''.obs;
  var selectedLogTime2 = ''.obs;
  var selectedLogTime3 = ''.obs;
  late SelectionBehavior selectionBehavior;
  late TooltipBehavior tooltipBehavior;

  @override
  void onInit() {
    tooltipBehavior =
        TooltipBehavior(enable: true, header: 'April', format: 'point.y mg/dl');
    selectionBehavior = SelectionBehavior(
        enable: true,
        selectedBorderWidth: 5,
        selectedBorderColor: Color.fromARGB(255, 230, 227, 219),
        selectedColor: Color(0xFFBE9E45),
        unselectedColor: Color(0xFFD8C691));
    super.onInit();
  }
}
