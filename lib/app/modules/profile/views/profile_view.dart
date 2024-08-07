import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homevice/app/common/theme/fonts.dart';

import 'package:homevice/app/shared/widgets/custom_elevated_button.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chat',
          style: semiBoldText24.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.centerLeft,
            stops: [0.1, 0.2, 0.7],
            colors: [
              Color(0xFF499FD4),
              Color(0xFF3393CF),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Container(
              child: CustomElevatedButton(
                onPressed: controller.onLogoutClicked(),
                text: 'Logout',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
