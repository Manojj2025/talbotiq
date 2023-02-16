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
    {"icon": Icons.person_add_alt_sharp, "name": "Assign"},
    {"icon": Icons.task_alt_outlined, "name": "New Task"},
    {"icon": Icons.edit_calendar_rounded, "name": "Log Activity"},
    {"icon": Icons.edit_note_sharp, "name": "Edit"},
    {"icon": Icons.delete, "name": "Delete"},
  ].obs;
  final experienceyear = 0.0.obs;
  final selectfilter = ''.obs;
  final subfilterlist = [
    'Maybank',
    'CIMB Bank',
    'HCL Tech',
    'Islamic Bank of Ihsan',
    'Bank Ihsan'
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
