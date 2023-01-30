import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LeadController extends GetxController {
  //TODO: Implement JobsController
  final clientlist = [
    {"name": "All Leads", "value": "22"},
    {"name": "Marked Lead", "value": "22"},
    {"name": "Draft", "value": "22"},
  ].obs;
  final selectname = 'All Leads'.obs;
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
    {"icon": Icons.remove_red_eye_outlined, "name": "View Lead"},
    {"icon": Icons.person_add, "name": "Assign"},
    {"icon": Icons.task_alt_outlined, "name": "New Task"},
    {"icon": Icons.calendar_view_day, "name": "Log Activity"},
    {"icon": Icons.add_box_outlined, "name": "Edit"},
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
