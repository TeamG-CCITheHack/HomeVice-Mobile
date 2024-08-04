import 'package:flutter/material.dart';
import 'package:homevice/app/common/theme/fonts.dart';
import 'package:homevice/app/data/model/service_model.dart';

class ServiceProviderWidget extends StatelessWidget {
  final ServiceModel service;

  const ServiceProviderWidget({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          isScrollControlled: true,
          builder: (context) {
            return Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 80,
                          height: 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          service.imagePath,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              height: 250,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.image_not_supported,
                                size: 30,
                                color: Color.fromARGB(255, 53, 53, 53),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            service.name,
                            style: boldText24,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              // rating
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    size: 24,
                                    color: Colors.amber,
                                  ),
                                  const SizedBox(width: 4.0),
                                  Text(
                                    service.rating.toString(),
                                    style: semiBoldText18,
                                  ),
                                ],
                              ),
                              // service sold
                              Row(
                                children: [
                                  Text(
                                    service.soldServices.toString(),
                                    style: regularText14,
                                  ),
                                  Text(
                                    " Jasa terjual",
                                    style: regularText14,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      // specialty
                      Text(
                        service.specialty,
                        style: regularText16,
                        overflow: TextOverflow.ellipsis,
                      ),
                      // location
                      Text(
                        service.location,
                        style: regularText16,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 14),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                                // margin: const EdgeInsets.only(
                                //     right: 8.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: const Color(0xFF4699BC),
                                      width: 2.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.chat,
                                      color: Color(0xFF4699BC),
                                    ),
                                    const SizedBox(width: 8.0),
                                    Text(
                                      'Chat',
                                      style: semiBoldText16.copyWith(
                                        color: const Color(0xFF4699BC),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Flexible(
                            child: InkWell(
                              onTap: () {},
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                                // margin: const EdgeInsets.only(
                                //     right: 8.0),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF4699BC),
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Pesan',
                                      style: semiBoldText16.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(width: 8.0),
                                    const Icon(
                                      Icons.arrow_right_alt_rounded,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      child: serviceProviderCardBuilder_(),
    );
  }

  Container serviceProviderCardBuilder_() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              service.imagePath,
              height: 90,
              width: 90,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.image_not_supported,
                    size: 30,
                    color: Color.fromARGB(255, 53, 53, 53),
                  ),
                );
              },
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // name
                Text(
                  service.name,
                  style: boldText20,
                  overflow: TextOverflow.ellipsis,
                ),
                // specialty
                Text(
                  service.specialty,
                  style: regularText16,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 14.0),

                // location
                Text(
                  service.location,
                  style: regularText16,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // rating
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.amber,
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    service.rating.toString(),
                    style: regularText14,
                  ),
                ],
              ),
              // service sold
              Row(
                children: [
                  Text(
                    service.soldServices.toString(),
                    style: regularText14,
                  ),
                  Text(
                    " Jasa terjual",
                    style: regularText14,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
