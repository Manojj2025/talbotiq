import 'package:get/get.dart';

class JobdetailController extends GetxController {
  //TODO: Implement JobdetailController

  final joblist = [
    {"name": "Description", "value": ""},
    {"name": "Applications", "value": "1"},
    {"name": "Job Boards", "value": ""},
    {"name": "Recommended Candidates", "value": "2"},
    {"name": "Job Analytics", "value": ""},
  ].obs;
  final joblist2 = ["Photoshop", "Ptototype", "Figma", "UX/UI", "Adobe"].obs;
  final jobselectname = 'Description'.obs;
  final jobselectname2 = 'Photoshop'.obs;
  final jobselectname3 = 'Photoshop'.obs;
  final selected = 0.obs;
  final joboardlist = [
    {"img": "assets/image/note.png", "title": "Job Applied (2)"},
    {"img": "assets/image/phone.png", "title": "Interview (2)"},
    {"img": "assets/image/hold.png", "title": "On Hold (2)"},
    {"img": "assets/image/call.png", "title": "Contacted (2)"},
    {"img": "assets/image/rej.png", "title": "Rejected (2)"},
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
