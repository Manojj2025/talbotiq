import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientController extends GetxController {
  //TODO: Implement JobsController
  final clientlist = [
    {"name": "All Clients", "value": "22"},
    {"name": "Marked Clients", "value": "22"},
    {"name": "Marked Recruiters", "value": "22"},
    {"name": "Draft", "value": "22"},
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
  final selectname = 'All Clients'.obs;
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
    "Job",
    "Created Date",
    "Location",
    "Company",
  ].obs;
  final editlist = [
    {"icon": Icons.remove_red_eye_outlined, "name": "View client"},
    {"icon": Icons.business_center_rounded, "name": "Create Job"},
    {"icon": Icons.task_alt_outlined, "name": "Create Task"},
    {"icon": Icons.message, "name": "Broadcast Message"},
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
