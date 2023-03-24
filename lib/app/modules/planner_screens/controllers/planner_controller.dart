import 'package:Talbotiq/app/constants/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../jobs_screens/views/home_view.dart';

class PlannerController extends GetxController {
  //TODO: Implement InterController
  final select = 'Calender'.obs;
  late List<ChartData> data;
  final agree = false.obs;
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;
  final kToday = DateTime.now();
  final selectdate = false.obs;
  final list = ['Today, 28th Feb 2023', 'Tomorrow', 'Completed'].obs;

  @override
  void onInit() {
    super.onInit();
    data = [
      ChartData('CHN', 10, 15, AppColors.primaryColor),
      ChartData('GER', 13, 10, Color(0xffEB5757)),
    ];
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
