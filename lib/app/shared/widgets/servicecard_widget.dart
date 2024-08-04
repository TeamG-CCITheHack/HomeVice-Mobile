import 'package:flutter/material.dart';
import 'package:homevice/app/common/theme/buttons.dart';
import 'package:homevice/app/common/theme/fonts.dart';
import 'package:homevice/app/data/model/service_model.dart';

class ServiceCard extends StatelessWidget {
  final ServiceModel service;

  const ServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              backgroundColor: Colors.transparent,
              child: SingleChildScrollView(
                child: IntrinsicWidth(
                  child: Column(
                    children: [
                      _cardBuilder(
                        context,
                        MediaQuery.of(context).size.width * 0.7,
                        MediaQuery.of(context).size.height * 0.2,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: transparentButton,
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.chat,
                                  color: Colors.black,
                                ),
                                const SizedBox(width: 8.0),
                                Text(
                                  'Chat',
                                  style: regularText18,
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            style: transparentButton,
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Pesan',
                                  style: regularText18,
                                ),
                                const SizedBox(width: 8.0),
                                const Icon(
                                  Icons.arrow_right_alt_rounded,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        child: _cardBuilder(
          context,
          MediaQuery.of(context).size.width * 0.5,
          MediaQuery.of(context).size.width * 0.3,
        ),
      ),
    );
  }

  Card _cardBuilder(BuildContext context, double width, double height) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      child: Container(
        width: width,
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              service.imagePath,
              width: width,
              height: height,
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
