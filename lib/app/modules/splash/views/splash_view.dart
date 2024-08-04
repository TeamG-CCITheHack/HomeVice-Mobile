import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:homevice/app/routes/app_pages.dart';
import 'package:homevice/app/service/shared_preferences.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => _navigateToNextScreen(), // Navigate after splash
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SplashView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  void _navigateToNextScreen() async {
    final SharedPreferencesService sharedPreferencesService =
        SharedPreferencesService();
    final token = await sharedPreferencesService.getToken();
    if (token != null) {
      Get.offAllNamed(Routes.MAIN);
    } else {
      Get.offAllNamed(Routes.LOGIN);
    }
  }
}
