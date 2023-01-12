import 'package:get/get.dart';

class JobdetailController extends GetxController {
  //TODO: Implement JobdetailController

  final joblist = [
    {"name": "Description", "value": ""},
    {"name": "Applications", "value": "1"},
    {"name": "Job Boards", "value": ""},
    {"name": "Recommended Candidates", "value": "2"},
    {"name": "Analytics", "value": ""},
  ].obs;
  final joblist2 = ["Photoshop", "Ptototype", "Figma", "UX/UI", "Adobe"].obs;
  final jobselectname = 'Description'.obs;
  final jobselectname2 = 'Photoshop'.obs;
  final jobselectname3 = 'Photoshop'.obs;
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
