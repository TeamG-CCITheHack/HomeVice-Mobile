import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:homevice/app/common/theme/fonts.dart';
import 'package:homevice/app/modules/customer/order/controllers/payment_progress_controller.dart';
import 'package:homevice/app/routes/app_pages.dart';

class PaymentProgressView extends GetView<PaymentProgressController> {
  const PaymentProgressView({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () => _navigateToNextScreen(),
    );
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/ic_progress.svg"),
            const SizedBox(height: 30.0),
            Text(
              'Tunggu ya! teknisi segera ke rumah mu...',
              style: regularText16,
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToNextScreen() {
    Get.offAllNamed(Routes.MAIN);
  }
}
