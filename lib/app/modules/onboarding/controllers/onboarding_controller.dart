// ignore_for_file: unnecessary_overrides, non_constant_identifier_names, prefer_const_constructors, prefer_interpolation_to_compose_strings, deprecated_member_use

import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_dear_app/app/modules/onboarding/views/onboarding_view.dart';

class OnboardingController extends GetxController {
  var pass_check = false.obs;
  var terms_cond_check = false.obs;

  @override
  void onInit() {
    super.onInit();
    NavigateTohome();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  NavigateTohome() async {
    await Future.delayed(Duration(seconds: 3));
    Get.to(OnboardingView());
  }

  var selectedImagePath = ''.obs;
  var isSelectedImage = false.obs;
  File? pickedFile;
  void getImage(ImageSource imageSource) async {
    final pickedImage =
        await ImagePicker().pickImage(source: imageSource, imageQuality: 100);
    pickedFile = File(pickedImage!.path);
    selectedImagePath.value = pickedImage.path;
    isSelectedImage.value = true;
  }
}
