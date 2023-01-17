import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatenewjobController extends GetxController {
  //TODO: Implement CreatenewjobController

  final index = 0.obs;
  final selected = 0.obs;
  final list = ["Private", "Corporation", "Retail", "Goverments", "Lomep"];
  final PageController pageController = PageController(
    initialPage: 0,
  );
  final show = false.obs;
  final show2 = false.obs;

  TextEditingController descriptionstext = TextEditingController();
  TextEditingController searchtxt = TextEditingController();
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
