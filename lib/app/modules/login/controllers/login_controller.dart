import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homevice/app/service/api_service.dart';
import 'package:homevice/app/service/shared_preferences.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var isPasswordHide = true.obs;
  var isLoadingLogin = false.obs;

  var formValid = false.obs;
  var correctEmail = false.obs;
  var correctPassword = false.obs;

  final ApiService _apiService = ApiService();
  final SharedPreferencesService _sharedPreferencesService =
      SharedPreferencesService();

  @override
  void onInit() {
    super.onInit();
    _addListeners();
    _checkToken();
  }

  void _addListeners() {
    emailController.addListener(_validateForm);
    passwordController.addListener(_validateForm);
  }

  void _validateForm() {
    correctEmail.value = emailController.text.isNotEmpty;
    correctPassword.value = passwordController.text.isNotEmpty;
    formValid.value = correctEmail.value && correctPassword.value;
  }

  VoidCallback? onLoginClicked() {
    return formValid.value ? login : null;
  }

  void login() async {
    isLoadingLogin.value = true;
    final email = emailController.text;
    final password = passwordController.text;

    try {
      final response = await _apiService.login(email, password);

      if (response.statusCode == 200 && response.data['code'] == 200) {
        final token = response.data['data']['token'];
        await _sharedPreferencesService.saveToken(token);
        Get.offAndToNamed('/main');
      } else {
        Get.snackbar('Error', 'Invalid login credentials');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to login. Please try again.');
    } finally {
      isLoadingLogin.value = false;
    }
  }

  void _checkToken() async {
    final token = await _sharedPreferencesService.getToken();

    if (token != null) {
      Get.offAndToNamed('/main');
    }
  }
}
