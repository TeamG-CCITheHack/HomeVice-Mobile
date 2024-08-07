import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homevice/app/service/shared_preferences.dart';

class ProfileController extends GetxController {
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService();

  VoidCallback? onLogoutClicked() {
    return logout;
  }

  void logout() async {
    await _sharedPreferencesService.clearToken();
    Get.offAndToNamed('/login');
  }
}
