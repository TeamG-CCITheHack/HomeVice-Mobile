import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:homevice/app/modules/chat/views/chat_view.dart';
import 'package:homevice/app/modules/history/views/history_view.dart';
import 'package:homevice/app/modules/home/views/home_view.dart';
import 'package:homevice/app/modules/profile/views/profile_view.dart';
import 'package:homevice/app/modules/service/views/service_view.dart';
import 'package:homevice/app/shared/widgets/botnavbar_widget.dart';

import '../controllers/main_controller.dart';

// ignore: must_be_immutable
class MainView extends GetView<MainController> {
  var selectedIndex = 0.obs;

  MainView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                HomeView(),
                ServiceView(),
                ChatView(),
                HistoryView(),
                ProfileView()
              ],
            ),
          ),
          bottomNavigationBar: BotNavBarWidget(
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
          ),
        );
      },
    );
  }
}
