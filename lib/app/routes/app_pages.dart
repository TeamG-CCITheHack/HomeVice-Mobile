import 'package:get/get.dart';
import 'package:homevice/app/modules/customer/order/views/payment_progress_view.dart';
import 'package:homevice/app/modules/customer/order/views/payment_view.dart';

import '../modules/customer/chat/bindings/chat_binding.dart';
import '../modules/customer/chat/views/chat_view.dart';
import '../modules/customer/history/bindings/history_binding.dart';
import '../modules/customer/history/views/history_view.dart';
import '../modules/customer/home/bindings/home_binding.dart';
import '../modules/customer/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/customer/main/bindings/main_binding.dart';
import '../modules/customer/main/views/main_view.dart';
import '../modules/customer/order/bindings/order_binding.dart';
import '../modules/customer/order/views/order_view.dart';
import '../modules/customer/profile/bindings/profile_binding.dart';
import '../modules/customer/profile/views/profile_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/service/bindings/service_binding.dart';
import '../modules/service/views/service_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.SERVICE,
      page: () => ServiceView(),
      binding: ServiceBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.ORDER,
      page: () => const OrderView(),
      binding: OrderBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT,
      page: () => const PaymentView(),
      binding: OrderBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_PROGRESS,
      page: () => const PaymentProgressView(),
      binding: OrderBinding(),
    ),
  ];
}
