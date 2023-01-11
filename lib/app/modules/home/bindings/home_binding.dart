import 'package:get/get.dart';

import 'package:talbotiq/app/modules/home/controllers/bottombar_controller.dart';
import 'package:talbotiq/app/modules/home/controllers/interviews_controller.dart';
import 'package:talbotiq/app/modules/home/controllers/jobs_controller.dart';
import 'package:talbotiq/app/modules/home/controllers/more_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MoreController>(
      () => MoreController(),
    );
    Get.lazyPut<InterviewsController>(
      () => InterviewsController(),
    );
    Get.lazyPut<JobsController>(
      () => JobsController(),
    );
    Get.lazyPut<BottombarController>(
      () => BottombarController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
