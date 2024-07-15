// servicecard_widget.dart
import 'package:flutter/material.dart';
import 'package:homevice/app/common/theme/fonts.dart';
import 'package:homevice/app/data/model/service_model.dart';

class ServiceCard extends StatelessWidget {
  final ServiceModel service;

  const ServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              service.imagePath,
              width: 200,
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    service.name,
                    style: mediumText20,
                  ),
                  Text(
                    service.specialty,
                    style: regularText14,
                  ),
                  Text(
                    service.location,
                    style: regularText14,
                  ),
                  const SizedBox(height: 12),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star_rounded,
                              color: Colors.amber,
                            ),
                            Text(
                              service.rating.toString(),
                              style: regularText14,
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          color: Colors.black,
                          thickness: 1,
                          indent: 5,
                          endIndent: 5,
                        ),
                        Text(
                          "${service.soldServices} Jasa terjual",
                          style: regularText14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
