import 'package:get/get.dart';
import 'package:homevice/app/data/model/botnavbar_model.dart';

class MainController extends GetxController {
  final BotNavBarModel bottomNavBarModel = BotNavBarModel();
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
