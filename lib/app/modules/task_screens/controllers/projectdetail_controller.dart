import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectdetailController extends GetxController {
  //TODO: Implement JobdetailController

  final list = [
    {"name": "Board", "img": "assets/image/board.png"},
    {"name": "Tree View", "img": "assets/image/tree.png"},
    {"name": "Status Board", "img": "assets/image/statusboard.png"},
  ].obs;
  final activity = ['Open', 'closed'];
  final joblist2 = ["Photoshop", "Ptototype", "Figma", "UX/UI", "Adobe"].obs;
  final selectname = 'Board'.obs;
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
  final editlist = [
    {"icon": Icons.settings, "name": "Settings"},
    {"icon": Icons.delete_outline, "name": "Delete"},
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
