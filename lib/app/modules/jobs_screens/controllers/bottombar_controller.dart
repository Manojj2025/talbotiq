import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/home_view.dart';
import '../../interview_screens/views/interviews_view.dart';
import '../views/jobs_view.dart';
import '../../profile_screens/views/more_view.dart';

class BottombarController extends GetxController {
  //TODO: Implement BottombarController
  // final bottomNavIndex = 0.obs;
  late PageController pageController;
  final pageIndex = 0.obs;
  // List<Widget> _screens;
  List children = [
    const HomeView(),
    const JobsView(),
    const InterviewsView(),
    const MoreView(),
  ];

  @override
  void onInit() {
    super.onInit();

    pageController = PageController(initialPage: 0);
    // pageController.addListener(() {});
    Future.delayed(const Duration(seconds: 1), () {});
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setPage(int pageindex) {
    pageController.jumpToPage(pageindex);
    pageIndex.value = pageindex;
  }
}
