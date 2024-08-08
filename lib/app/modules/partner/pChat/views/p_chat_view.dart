import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/p_chat_controller.dart';

class PChatView extends GetView<PChatController> {
  const PChatView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PChatView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PChatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
