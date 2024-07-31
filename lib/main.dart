import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homevice/app/service/shared_preferences.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferencesService sharedPreferencesService =
      SharedPreferencesService();
  final token = await sharedPreferencesService.getToken();

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: token != null ? Routes.MAIN : Routes.LOGIN,
      getPages: AppPages.routes,
    ),
  );
}
