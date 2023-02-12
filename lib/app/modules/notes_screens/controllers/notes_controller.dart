import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotesController extends GetxController {
  //TODO: Implement InterController
  final editlist = [
    {"icon": Icons.remove_red_eye_outlined, "name": "View job"},
    {"icon": Icons.create_new_folder_outlined, "name": "Create Task"},
    {"icon": Icons.share, "name": "Share"},
    {"icon": Icons.print, "name": "Print"},
    {"icon": Icons.add_box_outlined, "name": "Duplicate"},
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
