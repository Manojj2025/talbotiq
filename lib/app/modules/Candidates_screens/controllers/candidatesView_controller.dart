import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CandidatesController extends GetxController {
  //TODO: Implement JobsController
  final joblist = [
    {"name": "All Candidates", "value": "22"},
    {"name": "Marked", "value": "22"},
    {"name": "Drafts", "value": "22"},
  ].obs;
  final jobselectname = 'All Candidates'.obs;
  final filterlist = [
    "Select Organization",
    "Select Job Type",
    "Skills",
    "Department",
    "CTC",
    "Experience"
  ].obs;
  final sortlist = [
    "Job",
    "Created Date",
    "Location",
    "Company",
  ].obs;
  final editlist = [
    {"icon": Icons.remove_red_eye_outlined, "name": "View job"},
    {"icon": Icons.person_outline, "name": "Assign Job"},
    {"icon": Icons.share, "name": "Share externally"},
    {"icon": Icons.edit, "name": "Edit"},
    {"icon": Icons.add_box_outlined, "name": "Duplicate"},
    {"icon": Icons.delete, "name": "Delete"},
    {"icon": Icons.logout, "name": "Deactivate"},
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
