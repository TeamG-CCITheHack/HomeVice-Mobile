import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/p_main_controller.dart';

class PMainView extends GetView<PMainController> {
  const PMainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PMainView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PMainView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
