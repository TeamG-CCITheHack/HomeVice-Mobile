import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:homevice/app/common/theme/fonts.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Riwayat',
          style: semiBoldText24.copyWith(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.centerLeft,
            stops: [0.1, 0.2, 0.7],
            colors: [
              Color(0xFF499FD4),
              Color(0xFF3393CF),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              _historyBuilder(),
              _historyBuilder(),
              _historyBuilder(),
              _historyBuilder(),
              _historyBuilder(),
            ],
          ),
        ),
      ),
    );
  }

  Container _historyBuilder() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.history,
                size: 50,
                color: Color(0xFF4699BC),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Service AC",
                    style: semiBoldText20,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Text(
                          "Selesai",
                          style: regularText14.copyWith(
                            color: const Color(0xFF5AC12D),
                          ),
                        ),
                        const VerticalDivider(),
                        Text(
                          "16 Mei 2024",
                          style: regularText14,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(height: 30),
        ],
      ),
    );
  }
}
