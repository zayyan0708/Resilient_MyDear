// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:my_dear_app/app/modules/home/models/recent_glucose.dart';

class HomeController extends GetxController {
  var selectedPage = 0.obs;
  var selectedTime = ''.obs;
  List<GlucoseLevel> glucoseList = [
    GlucoseLevel(time: '12:43 PM', date: '23', month: 'APR', level: 270),
    GlucoseLevel(time: '10:43 AM', date: '29', month: 'APR', level: 280),
    GlucoseLevel(time: '1:30 pM', date: '15', month: 'MAY', level: 90),
    GlucoseLevel(time: '4:30 pM', date: '18', month: 'MAY', level: 80),
  ];
  List<Medications> medicationList = [
    Medications(
        title: 'Insulin Aspart',
        subtitle: ['NovoLog', 'FlexPen', 'Fiasp'],
        dosage: '2',
        mass: '50',
        due: 'Before Breakfast'),
    Medications(
        title: 'Insulin Aspart',
        subtitle: ['NovoLog', 'Fiasp'],
        dosage: '3',
        mass: '10',
        due: 'Before Dinner'),
    Medications(
        title: 'Insulin Degludec',
        subtitle: ['Tresiba'],
        dosage: '1',
        mass: '40',
        due: 'After Breakfast'),
    Medications(
        title: 'Insulin Aspart',
        subtitle: ['NovoLog', 'FlexPen', 'Fiasp'],
        dosage: '2',
        mass: '50',
        due: 'Before Breakfast'),
    Medications(
        title: 'Insulin Aspart',
        subtitle: ['NovoLog', 'FlexPen', 'Fiasp'],
        dosage: '2',
        mass: '50',
        due: 'Before Breakfast'),
  ];
  List<Notification> notificationList = [
    Notification(
        text:
            'Make sure you are vaccinated and up to date with your COVID-19 vaccines',
        time: '2h ago'),
    Notification(
        text: 'Set up a COVID-19 vaccine alert to your email when slots open.',
        time: '2h ago'),
    Notification(
        text:
            'The appointment for  second dose of vaccine will be given by your physician',
        time: '2h ago'),
    Notification(
        text:
            'Get COVID-19 data for your county in the Coastal Health District.',
        time: '2h ago'),
    Notification(
        text: 'COVID-19 Testing Site to Close in Camden County March 16, 2022',
        time: '2h ago'),
    Notification(
        text: 'Public Health COVID Testing Sites Open on December 31st.',
        time: '2h ago'),
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
