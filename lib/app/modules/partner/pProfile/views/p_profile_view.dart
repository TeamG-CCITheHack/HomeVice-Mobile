import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/p_profile_controller.dart';

class PProfileView extends GetView<PProfileController> {
  const PProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PProfileView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PProfileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
