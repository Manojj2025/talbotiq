import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  //TODO: Implement JobsController
  final list = [
    {"name": "Chat", "value": ""},
    {"name": "Calls", "value": ""},
    {"name": "Activities", "value": ""},
  ].obs;

  final selectname = 'Email'.obs;
  final jobselectname = 'Chat'.obs;
  final list2 = [
    {"icon": Icons.add, "name": "New Meeting"},
    {"icon": Icons.calendar_today_outlined, "name": "Schedule"},
  ].obs;
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
