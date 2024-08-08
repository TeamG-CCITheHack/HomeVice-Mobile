import 'package:get/get.dart';

import '../controllers/p_chat_controller.dart';

class PChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PChatController>(
      () => PChatController(),
    );
  }
}
