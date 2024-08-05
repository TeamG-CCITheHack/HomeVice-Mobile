import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:homevice/app/common/theme/fonts.dart';
import 'package:homevice/app/shared/widgets/custom_dropdown.dart';
import 'package:homevice/app/shared/widgets/custom_elevated_button.dart';
import 'package:homevice/app/shared/widgets/custom_text_field.dart';

import '../controllers/order_controller.dart';

class OrderView extends GetView<OrderController> {
  const OrderView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Pemesanan',
          style: semiBoldText24.copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.01, 0.1, 0.3],
            colors: [
              Color(0xFF499FD4),
              Color(0xFF3393CF),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Provider profile
                Row(
                  children: [
                    // service provider photos
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        child: Image.asset(
                          "assets/images/service-ac.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(width: 24.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "service.name",
                          style: mediumText20,
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          "service.specialty",
                          style: regularText14,
                        ),
                        Text(
                          "service.location",
                          style: regularText14,
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  height: 50,
                  color: Colors.black,
                  thickness: 0.5,
                ),
                _buildTitleSection(title: 'Service'),
                _buildDropDown(
                  context: context,
                  listDropDown: controller.listDropDown,
                  selectedDropDown: controller.selectedDropDown.value,
                  onChangedRackName: controller.onChangedRackName,
                ),
                _buildTitleSection(title: 'Tuliskan Keluhan'),
                CustomTextField(
                  label: '',
                  controller: controller.keluhanController,
                  textInputType: TextInputType.multiline,
                  maxLines: 4,
                  maxLength: 100,
                  isRequired: false,
                ),
                _buildTitleSection(title: 'Jadwal'),
                _buildDateSelector(context),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomElevatedButton(
          onPressed: () {
            Get.offAndToNamed("");
          },
          text: "Lanjut",
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _buildDateSelector(BuildContext context) {
    return TextField(
      controller: controller.dateController,
      decoration: InputDecoration(
        fillColor: Colors.white,
        prefixIcon: const Icon(Icons.calendar_today),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(color: Color(0xFF3393CF), width: 2),
        ),
      ),
      readOnly: true,
      onTap: () => controller.selectDate(context),
    );
  }

  _buildTitleSection({
    required String title,
  }) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(
        left: 18,
        bottom: 2,
      ),
      child: Text(
        title,
        style: regularText16,
      ),
    );
  }

  _buildDropDown({
    required BuildContext context,
    required List<String> listDropDown,
    required String selectedDropDown,
    required void Function(String? value) onChangedRackName,
  }) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 20,
        ),
        child: DropDown(
          showSearchBox: false,
          listElement: listDropDown,
          selectedItem: selectedDropDown,
          onChange: onChangedRackName,
          borderSide: const BorderSide(
            width: 2,
          ),
          focusBorderSide: const BorderSide(
            color: Color(0xFF3393CF),
            width: 2,
          ),
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
