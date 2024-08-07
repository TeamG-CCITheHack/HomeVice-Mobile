import 'package:get/get.dart';

import 'package:homevice/app/modules/customer/order/controllers/payment_controller.dart';
import 'package:homevice/app/modules/customer/order/controllers/payment_progress_controller.dart';

import '../controllers/order_controller.dart';

class OrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentProgressController>(
      () => PaymentProgressController(),
    );
    Get.lazyPut<PaymentController>(
      () => PaymentController(),
    );
    Get.lazyPut<OrderController>(
      () => OrderController(),
    );
  }
}
