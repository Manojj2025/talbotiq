import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GroupdetailController extends GetxController {
  //TODO: Implement JobdetailController

  final list = [
    {"name": "Projects (2)", "img": "assets/image/board.png"},
    {"name": "Subgroups (2)", "img": "assets/image/tree.png"},
  ].obs;
  final selectname = 'Projects (2)'.obs;
  final editlist = [
    {"icon": Icons.remove_red_eye_outlined, "name": "View Group"},
    {"icon": Icons.settings, "name": "Settings"},
    {"icon": Icons.delete, "name": "Delete"},
  ];
  final project = ["New Subgroup", "New Project", "Existing Project"].obs;
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
