import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskdetailController extends GetxController {
  //TODO: Implement JobdetailController

  final list = [
    {"name": "Details", "img": "assets/image/board.png"},
    {"name": "Comments (0)", "img": "assets/image/tree.png"},
    {"name": "Activities (0)", "img": "assets/image/statusboard.png"},
  ].obs;
  final selectname = 'Details'.obs;
  final selected = 0.obs;
  final editlist = [
    {"icon": Icons.settings, "name": "Settings"},
    {"icon": Icons.delete_outline, "name": "Delete"},
  ].obs;
  final agree = false.obs;
  final onday = 0.obs;
  final repeat = 'Weekly'.obs;
  final days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'].obs;
  final repeatlist = [
    'Do not Repeat',
    'Every Day (Mo-Fri)',
    'Daily',
    'Weekly',
    'Monthly',
    'Yearly',
    'Custom'
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
