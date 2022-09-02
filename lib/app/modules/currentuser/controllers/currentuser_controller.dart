import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CurrentuserController extends GetxController {
  var editprofile = 'Edit Profile'.obs;



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
