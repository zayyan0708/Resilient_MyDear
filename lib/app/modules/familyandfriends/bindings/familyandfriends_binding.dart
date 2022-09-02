import 'package:get/get.dart';

import '../controllers/familyandfriends_controller.dart';

class FamilyandfriendsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FamilyandfriendsController>(
      () => FamilyandfriendsController(),
    );
  }
}
