import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homevice/app/data/model/service_model.dart';

class OrderController extends GetxController {
  final selectedDropDown = 'AC'.obs;
  final listDropDown = ['AC', 'Kompor'];
  TextEditingController dateController = TextEditingController();
  TextEditingController keluhanController = TextEditingController();
  Rx<ServiceModel>? selectedService = Rx<ServiceModel>(Get.arguments);

  void onChangedRackName(String? value) {
    selectedDropDown.value = value ?? "";
  }

  void selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      dateController.text = "${pickedDate.toLocal()}".split(' ')[0];
    }
  }
}
