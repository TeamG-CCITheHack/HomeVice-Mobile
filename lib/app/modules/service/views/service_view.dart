import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:homevice/app/data/data_provider.dart';
import 'package:homevice/app/shared/widgets/custom_search_bar.dart';
import 'package:homevice/app/shared/widgets/service_provider_widget.dart';

import '../controllers/service_controller.dart';

class ServiceView extends GetView<ServiceController> {
  final services = serviceDataList();

  ServiceView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ServiceController());
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            stops: [0.1, 0.2, 0.7],
            colors: [
              Color(0xFF499FD4),
              Color(0xFF3393CF),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomSearchBar(
                      searchController: controller.searchController,
                    ),
                  ),
                  Column(
                    children: services
                        .map((service) =>
                            ServiceProviderWidget(service: service))
                        .toList(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
