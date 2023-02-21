import 'package:Talbotiq/app/constants/app_basestyles.dart';
import 'package:Talbotiq/app/constants/app_colors.dart';
import 'package:Talbotiq/app/constants/strings.dart';
import 'package:Talbotiq/app/modules/interview_screens/views/video_player_view.dart';
import 'package:Talbotiq/app/widgets/buttons.dart';
import 'package:Talbotiq/app/widgets/jobdetailwidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/full_screen.dart';
import '../../../widgets/rotate.dart';
import '../controllers/interviews_controller.dart';
import '../controllers/single_play_controller.dart';
import '../controllers/video_player_custom_controller.dart';

class InterviewDetailView extends GetView<InterviewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myappbar2(
          show2: Container(),
          show: true,
          title: HomeName.InterviewDetail,
        ),
        body: ListView(
          children: [
            Container(
              width: Get.width,
              color: AppColors.whiteColor,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Evaluate!',
                      style: BaseStyles.blackMedium14,
                    ),
                    textwidget2(name: '', text: 'Select'),
                  ],
                ),
              ),
            ),
            heightSpace10,
            Container(
              padding: EdgeInsets.all(8.0),
              color: AppColors.whiteColor,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            // backgroundColor: AppColors.primaryColor,
                            radius: 20,
                            child: Image.asset('assets/image/bajaj.png'),
                          ),
                          widthSpace10,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Nikita Sharma',
                                    style: BaseStyles.blackMedium16,
                                  ),
                                  // widthSpace5,
                                  // Container(
                                  //   padding: EdgeInsets.symmetric(
                                  //       horizontal: 8, vertical: 3),
                                  //   decoration: decorationbox2(
                                  //       color: AppColors.primaryColor2
                                  //           .withOpacity(0.2),
                                  //       radius: 30.0),
                                  //   child: Text(
                                  //     '6 new',
                                  //     style: BaseStyles.greenMedium11,
                                  //   ),
                                  // )
                                ],
                              ),
                              heightSpace5,
                              Text(
                                'nikita@gmail.com',
                                style: BaseStyles.grey2Medium12,
                              )
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                          padding: EdgeInsets.zero,
                          constraints:
                              BoxConstraints(minWidth: 0, minHeight: 0),
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_vert_outlined,
                            size: 16,
                            color: AppColors.greyprimarycolor,
                          )),
                    ],
                  ),
                  heightSpace10,
                  heightSpace5,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            MyImages.bag,
                            color: AppColors.greycolor2,
                            height: 16,
                            width: 16,
                          ),
                          widthSpace5,
                          Text(
                            'Accountant',
                            style: BaseStyles.lightblackMedium12,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            MyImages.build,
                            color: AppColors.greycolor2,
                            height: 16,
                            width: 16,
                          ),
                          widthSpace5,
                          Text(
                            'Oodles Technologies',
                            style: BaseStyles.lightblackMedium12,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            MyImages.cal,
                            color: AppColors.greycolor2,
                            height: 16,
                            width: 16,
                          ),
                          widthSpace5,
                          Text(
                            '2 Days ago',
                            style: BaseStyles.lightblackMedium12,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
