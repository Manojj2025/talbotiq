import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class ReminderController extends GetxController {
  //TODO: Implement InterController
  final select = 'Calender'.obs;
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;
  final kToday = DateTime.now();
  final selectdate = false.obs;
  final list = ['Today, 28th Feb 2023', 'Tomorrow', 'Completed'].obs;

  @override
  void onInit() {
    super.onInit();
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
