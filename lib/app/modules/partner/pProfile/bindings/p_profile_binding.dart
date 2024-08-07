import 'package:get/get.dart';

import '../controllers/p_profile_controller.dart';

class PProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PProfileController>(
      () => PProfileController(),
    );
  }
}
