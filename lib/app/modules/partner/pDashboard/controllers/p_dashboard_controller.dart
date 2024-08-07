import 'package:get/get.dart';
import 'package:homevice/app/data/data_provider.dart';
import 'package:homevice/app/data/model/scheduletask_model.dart';

class PDashboardController extends GetxController {
  Rx<DateTime> selectedDate = DateTime.now().obs;

  List<ScheduleTaskModel> get scheduleTaskData => scheduleTaskDataList();

  ScheduleTaskModel? get selectedScheduleTask {
    return scheduleTaskData.firstWhereOrNull(
      (schedule) => schedule.date == formatDate(selectedDate.value),
    );
  }

  String formatDate(DateTime date) {
    return "${date.day} ${monthName(date.month)} ${date.year}";
  }

  String monthName(int month) {
    List<String> months = [
      "Januari",
      "Februari",
      "Maret",
      "April",
      "Mei",
      "Juni",
      "Juli",
      "Agustus",
      "September",
      "Oktober",
      "November",
      "Desember"
    ];
    return months[month - 1];
  }

  String dayName(int weekday) {
    List<String> days = [
      "Senin",
      "Selasa",
      "Rabu",
      "Kamis",
      "Jumat",
      "Sabtu",
      "Minggu"
    ];
    return days[(weekday - 1) % 7];
  }
}
