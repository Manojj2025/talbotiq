import 'package:get/get.dart';

class JobsController extends GetxController {
  //TODO: Implement JobsController
  final joblist = [
    {"name": "All Jobs", "value": "22"},
    {"name": "Active", "value": "22"},
    {"name": "Inactive", "value": "22"},
    {"name": "In Review", "value": "22"},
  ].obs;
  final jobselectname = 'All Jobs'.obs;
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
