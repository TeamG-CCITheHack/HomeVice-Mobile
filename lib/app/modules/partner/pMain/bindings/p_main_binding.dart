import 'package:get/get.dart';

import '../controllers/p_main_controller.dart';

class PMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PMainController>(
      () => PMainController(),
    );
  }
}
