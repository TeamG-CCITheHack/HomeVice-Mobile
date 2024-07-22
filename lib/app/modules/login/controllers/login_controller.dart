import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getcrew_crew_v2/data/local/get_utils.dart' as get_utils;
// import 'package:getcrew_crew_v2/services/authentication_service.dart';
// import 'package:getcrew_crew_v2/ui/forget_password/forget_password_page.dart';
// import 'package:getcrew_crew_v2/ui/register/register_page.dart';
// import 'package:getcrew_crew_v2/ui/splash_success/splash_success_page.dart';
// import 'package:getcrew_crew_v2/ui/widgets/show_custom_dialog.dart';
// import 'package:getcrew_crew_v2/utils/logging.dart';
// import 'package:getcrew_crew_v2/utils/validation_helpers.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var isPasswordHide = true.obs;
  var isLoadingLogin = false.obs;

  var formValid = false.obs;
  var correctEmail = false.obs;
  var correctPassword = false.obs;

  // LoginPageController() {
  //   _addListeners();
  // }

  // void _addListeners() {
  //   _addControllerListener(
  //     emailController,
  //     ValidationHelpers.validateEmail,
  //     correctEmail,
  //   );
  //   _addControllerListener(
  //     passwordController,
  //     (text) => ValidationHelpers.validatePassword(
  //       value: text,
  //       isRegister: false,
  //     ),
  //     correctPassword,
  //   );
  // }

  void _addControllerListener(
    TextEditingController controller,
    String? Function(String) validator,
    RxBool correct,
  ) {
    controller.addListener(
      () {
        String? textValidate = validator(controller.text);
        correct.value = textValidate == null;
        formValid.value = _isFormValid();
        // log.i('formValid ${formValid.value}');
      },
    );
  }

  bool _isFormValid() {
    return correctEmail.value && correctPassword.value;
  }

  // void onPressedIconPassword() {
  //   isPasswordHide.value = !isPasswordHide.value;
  //   log.i('isPasswordHide ${isPasswordHide.value}');
  // }

  // String? validatorEmail(String? value) {
  //   return ValidationHelpers.validateEmail(value ?? "");
  // }

  // String? validatorPassword(String? value) {
  //   return ValidationHelpers.validatePassword(
  //     value: value ?? "",
  //     isRegister: false,
  //   );
  // }

  VoidCallback? onLoginClicked() {
    return formValid.value ? login : null;
  }

  // void onForgetPasswordClicked() {
  //   Get.to(() => const ForgetPasswordPage());
  // }

  // void onRegisterClicked() {
  //   Get.to(() => const RegisterPageView());
  // }

  void login() async {
    isLoadingLogin.value = true;
    // final authService = AuthenticationService();
    // final loginSuccess = await authService.login(
    //     email: emailController.text, password: passwordController.text);
    // get_utils.GetUtils prefs = get_utils.GetUtils();
    // if (!loginSuccess) {
    //   final errorMessage = authService.message ?? 'Unknown error';
    //   showCustomDialog(
    //     title: 'Data Tidak Sesuai',
    //     message: errorMessage,
    //   );
    //   isLoadingLogin.value = false;
    // } else {
    // Get.offAll(
    //   () => const SplashSuccessPage(),
    //   arguments: {
    //     'message': 'Kamu sudah berhasil masuk',
    //     'routeAfterSplash': 'bottomNavBar',
    //   },
    // );

    emailController.clear();
    passwordController.clear();
    // prefs.setIsGuest(false);
    isLoadingLogin.value = false;
  }
}
