import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OppurtunityController extends GetxController {
  //TODO: Implement JobsController
  final clientlist = [
    {"name": "All", "value": "22"},
    {"name": "Marked", "value": "22"},
    {"name": "Draft", "value": "22"},
  ].obs;
  final selectname = 'All'.obs;
  final save = [].obs;
  final filterlist = [
    "Select Organization",
    "Select Job Type",
    "Skills",
    "Department",
    "CTC",
    "Experience"
  ].obs;
  final sortlist = [
    "Contacted",
    "Qualified",
  ].obs;
  final editlist = [
    {"icon": Icons.remove_red_eye_outlined, "name": "View Oppurtunity"},
    {"icon": Icons.person_add, "name": "Edit"},
    {"icon": Icons.task_alt_outlined, "name": "Assign Owner"},
    {"icon": Icons.calendar_view_day, "name": "New Task"},
    {"icon": Icons.add_box_outlined, "name": "Log Activity"},
    {"icon": Icons.delete, "name": "Delete"},
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
