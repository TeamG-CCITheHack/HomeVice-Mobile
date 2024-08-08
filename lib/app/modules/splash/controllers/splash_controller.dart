import 'package:get/get.dart';
import 'package:homevice/app/routes/app_pages.dart';
// import 'package:homevice/app/service/jwt_decoder.dart';
import 'package:homevice/app/service/shared_preferences.dart';

class SplashController extends GetxController {
  void navigateToNextScreen() async {
    final SharedPreferencesService sharedPreferencesService =
        SharedPreferencesService();
    final token = await sharedPreferencesService.getToken();
    if (token != null) {
      Get.offAllNamed(Routes.P_MAIN);
    } else {
      Get.offAllNamed(Routes.LOGIN);
    }

    // -------------[]-------------
    // if (token != null) {
    //   final role = JWTDecoder.getRoleFromToken(token);
    //   if (role == 'customer') {
    //     Get.offAllNamed(Routes.MAIN);
    //   } else if (role == 'partner') {
    //     Get.offAllNamed(Routes.P_MAIN);
    //   } else {
    //     Get.offAllNamed(Routes.LOGIN);
    //   }
    // } else {
    //   Get.offAllNamed(Routes.LOGIN);
    // }
  }
}
