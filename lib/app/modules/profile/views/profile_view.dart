import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:homevice/app/shared/widgets/custom_elevated_button.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomElevatedButton(
              onPressed: controller.onLogoutClicked(),
              text: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
