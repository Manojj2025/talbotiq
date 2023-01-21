import 'package:get/get.dart';
import 'package:Talbotiq/app/constants/values.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final list = [
    {"img": MyImages.candidate, "value": "2", "title": "Candidates"},
    {"img": MyImages.job, "value": "2", "title": "Total Jobs"},
    {"img": MyImages.interview, "value": "2", "title": "Interviews"},
    {"img": MyImages.client, "value": "2", "title": "Clients"},
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
