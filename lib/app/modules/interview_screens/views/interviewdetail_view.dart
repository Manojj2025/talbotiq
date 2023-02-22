import 'package:Talbotiq/app/constants/app_basestyles.dart';
import 'package:Talbotiq/app/constants/app_colors.dart';
import 'package:Talbotiq/app/constants/strings.dart';
import 'package:Talbotiq/app/modules/interview_screens/views/single_play_view.dart';
import 'package:Talbotiq/app/modules/interview_screens/views/video_player_view.dart';
import 'package:Talbotiq/app/widgets/buttons.dart';
import 'package:Talbotiq/app/widgets/decoration.dart';
import 'package:Talbotiq/app/widgets/jobdetailwidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/full_screen.dart';
import '../../../widgets/rating.dart';
import '../../../widgets/rotate.dart';
import '../../../widgets/textfiled.dart';
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
                    textwidget2(
                        name: '',
                        text: 'Select',
                        onTap: () {
                          showModalBottomSheet(
                              isDismissible: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25.0),
                                ),
                              ),
                              builder: (context) {
                                return FractionallySizedBox(
                                  heightFactor: 0.85,
                                  child: Container(
                                    // height: 300,
                                    decoration:
                                        MyDecoration.radiusonlydecoration(
                                            tlradius: 25.0, trradius: 25.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          heightSpace20,
                                          Align(
                                            child: Container(
                                              height: 4,
                                              width: 160,
                                              decoration:
                                                  MyDecoration.simpledecoration(
                                                      color: AppColors
                                                          .greyprimarycolor),
                                            ),
                                          ),
                                          heightSpace20,
                                          Align(
                                            child: Text(
                                              'Evaluate Candidate',
                                              style: BaseStyles.blackMedium14,
                                            ),
                                          ),
                                          heightSpace10,
                                          Divider(
                                            thickness: 0.5,
                                          ),
                                          heightSpace5,
                                          textwidget2(
                                              name: 'Add a title**',
                                              text: 'Enter'),
                                          heightSpace5,
                                          Divider(
                                            thickness: 0.5,
                                          ),
                                          heightSpace10,
                                          textwidget(
                                              height: 150.0,
                                              readonly: false,
                                              onTap: () {},
                                              minline: 8,
                                              maxline: 8,
                                              name: 'Feedback',
                                              text: 'Write'),
                                          heightSpace5,
                                          Divider(
                                            thickness: 0.5,
                                          ),
                                          heightSpace10,
                                          Text(
                                            "Communication",
                                            style: BaseStyles.grey1Medium14,
                                          ),
                                          heightSpace5,
                                          RatingBar.builder(
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            unratedColor: AppColors
                                                .greyprimarycolor.shade300,
                                            itemSize: 30.0,
                                            itemCount: 5,
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 3.0),
                                            itemBuilder: (context, _) =>
                                                const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                          heightSpace10,
                                          Text(
                                            "Leadership",
                                            style: BaseStyles.grey1Medium14,
                                          ),
                                          heightSpace5,
                                          RatingBar.builder(
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            unratedColor: AppColors
                                                .greyprimarycolor.shade300,
                                            itemSize: 30.0,
                                            itemCount: 5,
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 3.0),
                                            itemBuilder: (context, _) =>
                                                const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                          heightSpace10,
                                          Text(
                                            "Teamwork",
                                            style: BaseStyles.grey1Medium14,
                                          ),
                                          heightSpace5,
                                          RatingBar.builder(
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            unratedColor: AppColors
                                                .greyprimarycolor.shade300,
                                            itemSize: 30.0,
                                            itemCount: 5,
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 3.0),
                                            itemBuilder: (context, _) =>
                                                const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                          heightSpace10,
                                          Expanded(child: Container()),
                                          mybuttons(
                                              // style:
                                              //     BaseStyles.grey2medium16,
                                              name: 'Submit',
                                              color: AppColors.orangecolor,
                                              height: 45.0)
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              });
                        }),
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
                  // heightSpace10,
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
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
            heightSpace10,
            _jobname(),
            heightSpace10,
            Obx(
              () => Column(
                children: [
                  controller.selectname2.value == 'Feedback'
                      ? Column(
                          children: [
                            _FeebackWidget(context),
                            heightSpace10,
                            _Feeback2Widget(),
                            heightSpace10,
                            _Feeback2Widget(),
                          ],
                        )
                      : Column(
                          children: [video(), heightSpace10, feddback()],
                        ),
                ],
              ),
            ),
          ],
        ));
  }

////////////////Feedback details////////////////////////////////

  _Feeback2Widget() {
    return Container(
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heightSpace10,
            Text(
              'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to',
              style: BaseStyles.blacNormal14,
            ),
            heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Circularwidget(
                  rate: '4.7',
                  text: 'Communication',
                ),
                widthSpace20,
                Circularwidget(
                  rate: '4.7',
                  text: 'Leadership',
                ),
                widthSpace20,
                Circularwidget(
                  rate: '4.7',
                  text: 'Teamwork',
                ),
              ],
            ),
            heightSpace10,
            RatingBarIndicator(
              rating: 4.0,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemCount: 5,
              itemSize: 15.0,
              unratedColor: AppColors.greyprimarycolor.shade300,
              direction: Axis.horizontal,
            ),
            heightSpace5,
            Divider(
              thickness: 0.5,
            ),
            heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      size: 16,
                      color: AppColors.greyprimarycolor,
                    ),
                    widthSpace3,
                    Text(
                      '21 Aug 2022',
                      style: BaseStyles.lightblackMedium12,
                    )
                  ],
                ),
                widthSpace10,
                Row(
                  children: [
                    Icon(
                      Icons.person_outline,
                      color: AppColors.greyprimarycolor,
                      size: 18,
                    ),
                    widthSpace3,
                    Text(
                      'By Recruiter',
                      style: BaseStyles.lightblackMedium12,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
////////////////Feedback details////////////////////////////////

  _FeebackWidget(context) {
    return Container(
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Feedback',
                      style: BaseStyles.blackMedium14,
                    )
                  ],
                ),

                // widthSpace10
              ],
            ),
            heightSpace10,
            Divider(
              thickness: 0.5,
            ),
            heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      "4",
                      style: BaseStyles.blackMedium30,
                    ),
                    Icon(
                      Icons.star,
                      color: AppColors.blackColor,
                      size: 18,
                    )
                  ],
                ),
                Column(
                  children: [
                    chartRow(context, '5', 60),
                    chartRow(context, '4', 8),
                    chartRow(context, '3', 2),
                    chartRow(context, '4', 1),
                    chartRow(context, '1', 0),
                  ],
                ),
              ],
            ),
            heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Circularwidget(
                  rate: '4.7',
                  text: 'Communication',
                ),
                Circularwidget(
                  rate: '4.7',
                  text: 'Leadership',
                ),
                Circularwidget(
                  rate: '4.7',
                  text: 'Teamwork',
                ),
                Circularwidget(
                  rate: '4.7',
                  text: 'Leadership',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

///////////////// overall feedback//////////////////////
  Widget feddback() {
    return Container(
      width: Get.width,
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Overall Feedback',
              style: BaseStyles.blackMedium14,
            ),
            const Divider(
              thickness: 0.3,
              height: 25,
            ),
            heightSpace10,
            Text(
              "Python",
              style: BaseStyles.grey1Medium14,
            ),
            heightSpace5,
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              unratedColor: AppColors.greyprimarycolor.shade300,
              itemSize: 30.0,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            heightSpace10,
            Text(
              "Full Stack",
              style: BaseStyles.grey1Medium14,
            ),
            heightSpace5,
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              unratedColor: AppColors.greyprimarycolor.shade300,
              itemSize: 30.0,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            heightSpace10,
            Text(
              "Teamwork",
              style: BaseStyles.grey1Medium14,
            ),
            heightSpace5,
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              unratedColor: AppColors.greyprimarycolor.shade300,
              itemSize: 30.0,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            heightSpace10,
            textwidget(
                height: 150.0,
                readonly: false,
                onTap: () {},
                minline: 8,
                maxline: 8,
                name: 'Feedback',
                text: 'Write'),
            heightSpace10,
            mybuttons(
                action: () {
                  Get.back();
                },
                name: 'Submit',
                radius: 5.0,
                color: AppColors.orangecolor,
                height: 45.0),
          ],
        ),
      ),
    );
  }

  ///////// watch interviews////////////////////////////////////////
  Widget video() {
    return Container(
      height: 210,
      width: Get.width,
      color: AppColors.whiteColor,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Interview Videos',
              style: BaseStyles.blackMedium14,
            ),
            const Divider(
              thickness: 0.3,
              height: 25,
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: InkWell(
                        onTap: () => Get.to(SinglePlayView()),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.asset(
                                    'assets/image/u.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Positioned.fill(
                                    child: Icon(
                                  Icons.play_arrow,
                                  size: 40,
                                  color: AppColors.whiteColor,
                                )),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        '10:17',
                                        style: BaseStyles.whitesmall10,
                                      ),
                                    ))
                              ],
                            ),
                            heightSpace10,
                            Container(
                              decoration: decorationbox(
                                  radius: 30.0, color: AppColors.greycolor3),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 13.0, vertical: 4),
                                child: Text(
                                  'Question 1',
                                  style: BaseStyles.whitenormal12,
                                ),
                              ),
                            ),
                            heightSpace10,
                            SizedBox(
                              width: Get.width * 0.30,
                              child: Text(
                                'In publishing and graphic design...',
                                style: BaseStyles.blacNormal14,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  //////////////////// job name list widget ui////////////////////////////////
  _jobname() {
    return Container(
      height: 50,
      width: Get.width,
      color: AppColors.whiteColor,
      margin: EdgeInsets.zero,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: controller.list.length,
          itemBuilder: (BuildContext context, int index) {
            return Obx(
              (() => Row(
                    children: [
                      widthSpace10,
                      InkWell(
                        onTap: () {
                          controller.selectname2.value =
                              controller.list2[index]['name'].toString();
                        },
                        child: Container(
                          height: 30,
                          // width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: controller.selectname2.value ==
                                      controller.list2[index]['name']
                                  ? AppColors.primaryColor
                                  : AppColors.whiteColor,
                              border: Border.all(
                                  color: AppColors.greyprimarycolor,
                                  width: 0.2),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Text(
                              "${controller.list2[index]['name'].toString()}",
                              style: controller.selectname2.value ==
                                      controller.list2[index]['name']
                                  ? BaseStyles.whitemedium14
                                  : BaseStyles.greyMedium14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            );
          }),
    );
  }
}
