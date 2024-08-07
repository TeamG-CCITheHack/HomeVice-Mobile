import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homevice/app/common/theme/colors.dart';
import 'package:homevice/app/common/theme/fonts.dart';
import 'package:homevice/app/data/model/scheduletask_model.dart';
import 'package:homevice/app/modules/partner/pDashboard/controllers/p_dashboard_controller.dart';

class PDashboardView extends GetView<PDashboardController> {
  const PDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => PDashboardController());
    return Scaffold(
      backgroundColor: Colors.transparent,
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
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hallo,",
                          style: semiBoldText24.copyWith(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Pak Ari Supratman!",
                          style: mediumText20.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTitleSection(title: "Pesanan masuk"),
                      _buildIncomingOrderCard(
                        "assets/images/service-ac.jpg",
                        "Cha Eunwoo",
                        "AC",
                        "Senin, 22 Januari 2024",
                      ),
                      _buildTitleSection(title: "Jadwal Anda"),
                      _buildScheduleRow(),
                      Obx(() {
                        ScheduleTaskModel? selectedSchedule =
                            controller.selectedScheduleTask;
                        if (selectedSchedule == null) {
                          return Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 100.0),
                                child: Text(
                                  "Tidak ada tugas",
                                  style: semiBoldText18.copyWith(
                                    color: const Color(0xFF4699BC),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }

                        return Column(
                          children: selectedSchedule.tasks
                              .map((task) => _buildScheduleTask(
                                    task.image,
                                    task.name,
                                    task.type,
                                    task.date,
                                    task.status,
                                  ))
                              .toList(),
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Card _buildScheduleTask(
    String imagePath,
    String name,
    String type,
    String date,
    bool isDone,
  ) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: semiBoldText18,
                      ),
                      Text(
                        type,
                        style: semiBoldText14.copyWith(
                          color: AppColors.neutralColors[2],
                        ),
                      ),
                      Text(
                        date,
                        style: mediumText14.copyWith(
                          color: AppColors.neutralColors[1],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                  decoration: BoxDecoration(
                    color: isDone ? Colors.green : Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    isDone ? "Selesai" : "Proses",
                    style: mediumText14.copyWith(
                        color: isDone ? Colors.white : Colors.black),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF4699BC),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Lihat Detail Pesanan",
                  style: mediumText14.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScheduleRow() {
    ScrollController scrollController = ScrollController();
    DateTime now = DateTime.now();
    List<Widget> scheduleCards = [];
    for (int i = -7; i <= 7; i++) {
      DateTime date = now.add(Duration(days: i));
      bool isToday = date.day == now.day &&
          date.month == now.month &&
          date.year == now.year;
      scheduleCards.add(
        GestureDetector(
          onTap: () {
            controller.selectedDate.value = date;
          },
          child: Obx(() {
            bool isSelected = date == controller.selectedDate.value;
            return _scheduleCardBuilder(date, isToday, isSelected);
          }),
        ),
      );
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollController.animateTo(
        ((7 - 1) *
            90.0), // Calculate the offset to center today (index 7, each card is 90.0 width)
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });

    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            Colors.transparent,
            Colors.black,
            Colors.black,
            Colors.transparent,
          ],
          stops: [0.0, 0.05, 0.95, 1.0],
        ).createShader(bounds);
      },
      blendMode: BlendMode.dstIn,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller: scrollController,
        child: Row(
          children: scheduleCards,
        ),
      ),
    );
  }

  Card _scheduleCardBuilder(DateTime date, bool isToday, bool isSelected) {
    ScheduleTaskModel? schedule = controller.scheduleTaskData.firstWhereOrNull(
      (schedule) => schedule.date == _formatDate(date),
    );

    int numberOfTasks = schedule?.numberOfTasks ?? 0;

    return Card(
      color: isToday ? Colors.white : Colors.blueGrey[100],
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? const Color(0xFF4699BC) : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        width: 90,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Month
            Text(
              _monthName(date.month),
              style: semiBoldText10.copyWith(
                color: AppColors.neutralColors[1],
              ),
            ),
            // Day
            Center(
              child: Text(
                _dayName(date.weekday),
                style: boldText16,
              ),
            ),
            // Date
            Center(
              child: Text(
                date.day.toString(),
                style: boldText24.copyWith(
                  color: const Color(0xFF4699BC),
                  fontSize: 35,
                ),
              ),
            ),
            // Task indicator dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                numberOfTasks > 0
                    ? numberOfTasks
                    : 1, // Generate at least 1 dot
                (index) => Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: numberOfTasks > 0
                        ? const Color(0xFF4699BC)
                        : Colors.transparent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return controller.formatDate(date);
  }

  String _monthName(int month) {
    return controller.monthName(month);
  }

  String _dayName(int weekday) {
    return controller.dayName(weekday);
  }

  Card _buildIncomingOrderCard(
    String imagePath,
    String name,
    String type,
    String date,
  ) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox(
                height: 70,
                width: 70,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: semiBoldText18,
                  ),
                  Text(
                    type,
                    style: semiBoldText14.copyWith(
                      color: AppColors.neutralColors[2],
                    ),
                  ),
                  Text(
                    date,
                    style: mediumText14.copyWith(
                      color: AppColors.neutralColors[1],
                    ),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              backgroundColor: const Color(0xFF4699BC),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildTitleSection({
    required String title,
  }) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: Text(
        title,
        style: semiBoldText16.copyWith(color: Colors.white),
      ),
    );
  }
}
