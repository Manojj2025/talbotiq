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
  final save = [].obs;

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
