import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InterviewsController extends GetxController {
  //TODO: Implement InterviewsController
  final list = [
    {"name": "All Interviews", "value": "22"},
    {"name": "Self Interview", "value": "22"},
    {"name": "Live Interview", "value": "2"},
    {"name": "Open Links", "value": "3"},
  ].obs;
  final selectname = 'All Interviews'.obs;
  final filterlist = [
    "Select Organization",
    "Select Job Type",
    "Skills",
    "Department",
    "CTC",
    "Experience"
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
  final editlist = [
    {"icon": Icons.remove_red_eye_outlined, "name": "View Interview"},
    {"icon": Icons.personal_injury_outlined, "name": "Evaluate"},
    {"icon": Icons.group_add_outlined, "name": "Invite Interviewers"},
    {"icon": Icons.calendar_today_outlined, "name": "Extend Interview"},
    {"icon": Icons.mode_edit_outlined, "name": "Modify"},
    {"icon": Icons.pause_sharp, "name": "On Hold"},
    {"icon": Icons.cancel_outlined, "name": "Cancel"},
  ].obs;
  final sortlist =
      ["Name", "Created Date", "Location", "Experience", "CTC"].obs;
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
