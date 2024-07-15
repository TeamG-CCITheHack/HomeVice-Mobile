import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homevice/app/common/theme/fonts.dart';
import 'package:homevice/app/common/theme/theme.dart';
import 'package:homevice/app/data/model/allservice_model.dart';

class AllServicesGrid extends StatelessWidget {
  final List<AllServicesModel> services;

  const AllServicesGrid({super.key, required this.services});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 10),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1,
        mainAxisExtent: 120,
      ),
      itemCount: services.length,
      itemBuilder: (context, index) {
        final service = services[index];
        return Card(
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () {
              Get.to(service.navigation);
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    themeData.primaryColor,
                    BlendMode.multiply,
                  ),
                  child: Image.asset(
                    service.image,
                    width: 200,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  service.title,
                  style: semiBoldText20.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
