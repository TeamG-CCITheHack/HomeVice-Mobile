import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:homevice/app/modules/partner/pDashboard/views/p_dashboard_view.dart';
import 'package:homevice/app/shared/widgets/partner/p_botnavbar_widger.dart';

import '../controllers/p_main_controller.dart';

class PMainView extends GetView<PMainController> {
  const PMainView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PMainController>(
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                PDashboardView(),
              ],
            ),
          ),
          bottomNavigationBar: PBotNavBarWidget(
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
          ),
        );
      },
    );
  }
}
