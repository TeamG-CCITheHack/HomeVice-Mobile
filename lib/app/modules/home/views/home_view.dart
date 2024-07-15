// home_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homevice/app/common/theme/fonts.dart';
import 'package:homevice/app/data/data_provider.dart';
import 'package:homevice/app/shared/widgets/allservicegrid_widget.dart';
import 'package:homevice/app/shared/widgets/servicecard_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the dummy data
    final services = serviceDataList();
    final allServices = allServicesDataList();

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
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
        padding: EdgeInsets.fromLTRB(
            10,
            AppBar().preferredSize.height +
                MediaQuery.of(context).viewPadding.top,
            10,
            0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 16.0),
                width: double.infinity,
                child: Text(
                  "Hi, Eunwoo!",
                  style: semiBoldText24.copyWith(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Service Recommendation
                  Container(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rekomendasi Layanan",
                          style: mediumText16.copyWith(),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: services
                                .map((service) => ServiceCard(service: service))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  // All Services
                  Container(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Semua Layanan",
                              style: semiBoldText20.copyWith(),
                            ),
                            Text(
                              "See more",
                              style: mediumText16.copyWith(color: Colors.grey),
                            ),
                          ],
                        ),
                        AllServicesGrid(services: allServices),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
