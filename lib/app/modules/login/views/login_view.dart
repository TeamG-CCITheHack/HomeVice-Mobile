import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:homevice/app/common/theme/fonts.dart';
import 'package:homevice/app/common/theme/theme.dart';
import 'package:homevice/app/shared/widgets/custom_elevated_button.dart';
import 'package:homevice/app/shared/widgets/custom_text_field.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/svg/Logo.svg',
              height: MediaQuery.of(context).size.height * 0.13,
            ),
            const SizedBox(height: 75),
            CustomTextField(
              label: 'Email or phone number',
              hintText: '',
              labelStyle: regularText16,
              isAutoValidate: false,
              isRequired: true,
              isPassword: false,
              isPasswordEmpty: false,
              isPasswordHide: false,
              textInputType: TextInputType.emailAddress,
              controller: controller.emailController,
            ),
            const SizedBox(height: 20),
            Obx(
              () => CustomTextField(
                label: 'Password',
                hintText: '',
                labelStyle: regularText16,
                isAutoValidate: false,
                isRequired: true,
                isPassword: true,
                isPasswordEmpty: false,
                isPasswordHide: controller.isPasswordHide.value,
                textInputType: TextInputType.visiblePassword,
                controller: controller.passwordController,
                onPressedIconPassword: () {
                  controller.isPasswordHide.value =
                      !controller.isPasswordHide.value;
                },
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: Text(
                  "Forget Password?",
                  style: regularText12,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 20),
            Obx(
              () => CustomElevatedButton(
                onPressed: controller.onLoginClicked(),
                text: 'Login',
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account yet?',
                  style: regularText12,
                ),
                const SizedBox(
                  width: 2,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Sign up here',
                    style: regularText12.copyWith(
                      color: themeData.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
