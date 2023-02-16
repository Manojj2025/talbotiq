import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientsdetailController extends GetxController {
  //TODO: Implement JobdetailController
  final showseach = false.obs;
  final clientslist = [
    {"name": "Overview", "value": ""},
    {"name": "Jobs", "value": "1"},
    {"name": "Notes", "value": ""},
    {"name": "Settings", "value": "2"},
  ].obs;
  final joblist2 = ["Photoshop", "Ptototype", "Figma", "UX/UI", "Adobe"].obs;
  final selectname = 'Overview'.obs;
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
  final agree = false.obs;
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
