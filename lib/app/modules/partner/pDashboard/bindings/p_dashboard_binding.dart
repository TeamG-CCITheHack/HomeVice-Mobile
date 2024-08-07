import 'package:get/get.dart';

import '../controllers/p_dashboard_controller.dart';

class PDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PDashboardController>(
      () => PDashboardController(),
    );
  }
}
