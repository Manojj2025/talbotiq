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
