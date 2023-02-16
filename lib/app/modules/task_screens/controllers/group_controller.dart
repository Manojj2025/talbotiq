import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GroupController extends GetxController {
  //TODO: Implement JobsController
  final select = 'Private'.obs;
  final agree = false.obs;
  final list = [
    {"name": "My Projects", "value": "22"},
    {"name": "All Projects", "value": "22"},
    {"name": "Marked", "value": "22"},
  ].obs;
  final jobselectname = 'My Projects'.obs;
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
    {"icon": Icons.remove_red_eye_outlined, "name": "View Project"},
    {"icon": Icons.settings, "name": "Settings"},
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
