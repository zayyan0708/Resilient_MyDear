import 'package:get/get.dart';

import '../controllers/currentuser_controller.dart';

class CurrentuserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CurrentuserController>(
      () => CurrentuserController(),
    );
  }
}
