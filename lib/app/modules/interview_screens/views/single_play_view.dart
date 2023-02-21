import 'package:Talbotiq/app/constants/app_basestyles.dart';
import 'package:Talbotiq/app/constants/app_colors.dart';
import 'package:Talbotiq/app/constants/strings.dart';
import 'package:Talbotiq/app/modules/interview_screens/views/video_player_view.dart';
import 'package:Talbotiq/app/widgets/buttons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/full_screen.dart';
import '../../../widgets/rotate.dart';
import '../controllers/single_play_controller.dart';
import '../controllers/video_player_custom_controller.dart';

class SinglePlayView extends GetView<SinglePlayController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SinglePlayController());
    Get.lazyPut(() => VideoPlayerCustomController());
    final scrollController = controller.scrollController;
    // ignore: unused_local_variable
    final recommandedScrollController = controller.recommandedScrollController;
    // ignore: unused_local_variable
    final aboutScrollController = controller.aboutScrollController;
    // var vc = Get.find<VideoPlayerCustomController>();

    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Obx(
      () => WillPopScope(
        onWillPop: () async {
          if (isPortrait) {
            return true;
          } else {
            controller.videoPlayerController.pause();
            rotate(isPortrait);
            fullScreenToggle(isPortrait);
            return false;
          }
        },
        child: Scaffold(
            appBar: myappbar2(
              widget: Row(
                children: [
                  Icon(
                    Icons.share,
                    color: AppColors.whiteColor,
                    size: 20,
                  ),
                  widthSpace5,
                  Text(
                    'Share Externally',
                    style: BaseStyles.whitebold14,
                  ),
                  widthSpace10
                ],
              ),
              show2: Container(),
              show: false,
              title: HomeName.InterviewDetail,
            ),
            body: !controller.loading.value
                ? ListView(
                    controller: scrollController,
                    physics: BouncingScrollPhysics(),
                    // children: [
                    children: [
                      VideoPlayerView(
                        thumbnail:
                            'https://media.istockphoto.com/id/635726330/photo/nahargarh-fort.jpg?s=612x612&w=0&k=20&c=z1hztb9BT6YhxT--G_cW8hBmBHWzrFdwbfM0Pc2jATI=',
                        videoPlayerController: controller.videoPlayerController,
                        selectedFitBox: controller.selectedFitBox,
                      ),
                    ],
                  )
                : Center(
                    child: CircularProgressIndicator(
                    color: AppColors.primaryColor,
                  ))),
      ),
    );
  }
}
