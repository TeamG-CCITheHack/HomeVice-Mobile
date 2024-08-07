import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:homevice/app/common/theme/colors.dart';
import 'package:homevice/app/common/theme/theme.dart';
import 'package:homevice/app/modules/order/controllers/payment_controller.dart';

import '../../../common/theme/fonts.dart';
import '../../../shared/widgets/custom_elevated_button.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Pembayaran',
          style: semiBoldText24.copyWith(
            color: kColorScheme.surface,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: kColorScheme.surface,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.01, 0.1, 0.3],
            colors: [
              Color(0xFF499FD4),
              Color(0xFF3393CF),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Provider profile
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    left: 24,
                    right: 24,
                    top: 16,
                    bottom: 32,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.neutralColors[3],
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '12 Juni 2024',
                          style: mediumText16,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Text(
                            'Nama teknisi: ',
                            style: regularText14,
                          ),
                          Text(
                            'Ari Supratman',
                            style: regularText14,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Customer: ',
                            style: regularText14,
                          ),
                          Text(
                            'Cha Eunwoo',
                            style: regularText14,
                          ),
                        ],
                      ),
                      const Divider(
                        height: 25,
                        color: Colors.black,
                        thickness: 0.5,
                      ),
                      Text(
                        'Jenis Service',
                        style: mediumText16,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ganti freon AC',
                            style: regularText14,
                          ),
                          Text(
                            '350.000',
                            style: regularText14,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jasa',
                            style: regularText14,
                          ),
                          Text(
                            '50.000',
                            style: regularText14,
                          ),
                        ],
                      ),
                      const Divider(
                        height: 25,
                        color: Colors.black,
                        thickness: 0.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: regularText14,
                          ),
                          Text(
                            '400.000',
                            style: regularText14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                _buildTitleSection(title: 'Pilih metode pembayaran'),
                const SizedBox(height: 20),
                // Transfer Bank
                Obx(() => GestureDetector(
                      onTap: () =>
                          controller.selectPaymentMethod('Transfer Bank'),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        height: 50,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: controller.selectedPaymentMethod.value ==
                                  'Transfer Bank'
                              ? themeData.primaryColor
                              : AppColors.neutralColors[4],
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                                'assets/icons/ic_transferBank.svg'),
                            const SizedBox(width: 10),
                            Text(
                              'Transfer Bank',
                              style: regularText14,
                            ),
                          ],
                        ),
                      ),
                    )),
                const SizedBox(height: 20),
                // DANA
                Obx(() => GestureDetector(
                      onTap: () => controller.selectPaymentMethod('DANA'),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        height: 50,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color:
                              controller.selectedPaymentMethod.value == 'DANA'
                                  ? themeData.primaryColor
                                  : AppColors.neutralColors[4],
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/img_dana.png',
                          height: 25,
                        ),
                      ),
                    )),
                const SizedBox(height: 20),
                // OVO
                Obx(() => GestureDetector(
                      onTap: () => controller.selectPaymentMethod('OVO'),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        height: 50,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: controller.selectedPaymentMethod.value == 'OVO'
                              ? themeData.primaryColor
                              : AppColors.neutralColors[4],
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/img_ovo.png',
                          height: 25,
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomElevatedButton(
          onPressed: () {
            Get.toNamed("/payment-progress");
          },
          text: 'Bayar',
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _buildTitleSection({required String title}) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(
        left: 18,
        bottom: 2,
      ),
      child: Text(
        title,
        style: regularText16,
      ),
    );
  }
}
