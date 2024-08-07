import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/p_dashboard_controller.dart';

class PDashboardView extends GetView<PDashboardController> {
  const PDashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDashboardView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PDashboardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
