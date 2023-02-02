import 'package:Talbotiq/app/modules/jobs_screens/views/totalapplication.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:readmore/readmore.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:timelines/timelines.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/decoration.dart';
import '../../../widgets/jobdetailwidget.dart';
import '../../../widgets/textfiled.dart';
import '../../jobs_screens/views/jobdescription_view.dart';
import '../controllers/candidatesdetail_controller.dart';
import 'addcertifications_view.dart';
import 'addeducation_view.dart';
import 'addemployment_view.dart';
import 'description.dart';

class CandidateNewTaskView extends GetView<CandidatesdetailController> {
  const CandidateNewTaskView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => CandidatesdetailController());
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(100),
              child: Column(children: [
                Container(
                  height: 55,
                  color: AppColors.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Icon(
                            Icons.arrow_back,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        widthSpace10,
                        Obx(
                          () => Text(
                            controller.index.value == 0
                                ? 'Add Candidate'
                                : controller.index.value == 1
                                    ? 'Employment History'
                                    : controller.index.value == 2
                                        ? 'Education History'
                                        : controller.index.value == 3
                                            ? 'Certifications History'
                                            : controller.index.value == 4
                                                ? 'Certifications History'
                                                : controller.index.value == 5
                                                    ? 'Add Skills'
                                                    : 'Add 6 Additional Info',
                            style: BaseStyles.whiteMedium16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: AppColors.primaryColor3,
                  height: 45,
                  child: Obx(
                    () => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_left_sharp,
                              size: 25,
                              color: controller.index.value < 1
                                  ? AppColors.greyprimarycolor.withOpacity(0.6)
                                  : AppColors.whiteColor,
                            ),
                            Expanded(
                              child: TimelineNode(
                                direction: Axis.horizontal,
                                indicator: GestureDetector(
                                  onTap: () {
                                    controller.pageController.animateToPage(0,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.ease);
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                        color: controller.index.value >= 0
                                            ? AppColors.primaryColor
                                            : AppColors
                                                .greyprimarycolor.shade300,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        '1',
                                        style: BaseStyles.whitebold14,
                                      )),
                                ),
                                endConnector: SolidLineConnector(
                                    // thickness: 3,
                                    color: AppColors.greyprimarycolor.shade300),
                              ),
                            ),
                            Expanded(
                              child: TimelineNode(
                                direction: Axis.horizontal,
                                indicator: GestureDetector(
                                  onTap: () {
                                    controller.pageController.animateToPage(0,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.ease);
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                        color: controller.index.value >= 1
                                            ? AppColors.primaryColor
                                            : AppColors
                                                .greyprimarycolor.shade300,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        '2',
                                        style: BaseStyles.whitebold14,
                                      )),
                                ),
                                startConnector: SolidLineConnector(
                                    // thickness: 3,
                                    color: AppColors.greyprimarycolor.shade300),
                                endConnector: SolidLineConnector(
                                    // thickness: 3,
                                    color: AppColors.greyprimarycolor.shade300),
                              ),
                            ),
                            Expanded(
                              child: TimelineNode(
                                direction: Axis.horizontal,
                                indicator: GestureDetector(
                                  onTap: () {
                                    controller.pageController.animateToPage(0,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.ease);
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                        color: controller.index.value >= 2
                                            ? AppColors.primaryColor
                                            : AppColors
                                                .greyprimarycolor.shade300,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        '3',
                                        style: BaseStyles.whitebold14,
                                      )),
                                ),
                                startConnector: SolidLineConnector(
                                    // thickness: 3,
                                    color: AppColors.greyprimarycolor.shade300),
                                endConnector: SolidLineConnector(
                                    // thickness: 3,
                                    color: AppColors.greyprimarycolor.shade300),
                              ),
                            ),
                            Expanded(
                              child: TimelineNode(
                                direction: Axis.horizontal,
                                indicator: GestureDetector(
                                  onTap: () {
                                    controller.pageController.animateToPage(0,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.ease);
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                        color: controller.index.value >= 3
                                            ? AppColors.primaryColor
                                            : AppColors
                                                .greyprimarycolor.shade300,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        '4',
                                        style: BaseStyles.whitebold14,
                                      )),
                                ),
                                startConnector: SolidLineConnector(
                                    // thickness: 3,
                                    color: AppColors.greyprimarycolor.shade300),
                                endConnector: SolidLineConnector(
                                    // thickness: 3,
                                    color: AppColors.greyprimarycolor.shade300),
                              ),
                            ),
                            Expanded(
                              child: TimelineNode(
                                direction: Axis.horizontal,
                                indicator: GestureDetector(
                                  onTap: () {
                                    controller.pageController.animateToPage(0,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.ease);
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                        color: controller.index.value >= 4
                                            ? AppColors.primaryColor
                                            : AppColors
                                                .greyprimarycolor.shade300,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        '5',
                                        style: BaseStyles.whitebold14,
                                      )),
                                ),
                                startConnector: SolidLineConnector(
                                    // thickness: 3,
                                    color: AppColors.greyprimarycolor.shade300),
                                endConnector: SolidLineConnector(
                                    // thickness: 3,
                                    color: AppColors.greyprimarycolor.shade300),
                              ),
                            ),
                            Expanded(
                              child: TimelineNode(
                                direction: Axis.horizontal,
                                indicator: GestureDetector(
                                  onTap: () {
                                    controller.pageController.animateToPage(2,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.ease);
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.all(13),
                                      decoration: BoxDecoration(
                                        color: controller.index.value >= 5
                                            ? AppColors.primaryColor
                                            : AppColors
                                                .greyprimarycolor.shade300,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        '6',
                                        style: BaseStyles.whitebold14,
                                      )),
                                ),
                                startConnector: SolidLineConnector(
                                    // thickness: 3,
                                    color: AppColors.greyprimarycolor.shade300),
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_sharp,
                              color: AppColors.whiteColor,
                              size: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            body: PageView(
              controller: controller.pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (int index) {
                controller.index.value = index;
              },
              children: [
                Obx(() => Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              // heightSpace10,
                              controller.index.value == 0
                                  ? Expanded(
                                      child: Container(
                                        width: Get.width,
                                        color: AppColors.whiteColor,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10.0,
                                            right: 10.0,
                                            top: 10.0,
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                textwidget(
                                                    name: 'Name *',
                                                    text: 'Enter'),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget2(
                                                    name: 'Gender *',
                                                    text: 'Select',
                                                    onTap: () {
                                                      // select(context);
                                                    }),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Phone *',
                                                      style: BaseStyles
                                                          .grey1Medium14,
                                                    ),
                                                    heightSpace5,
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        singlefiled(
                                                          color: AppColors
                                                              .greyprimarycolor
                                                              .shade300,
                                                          width: 60.0,
                                                          name: '+91',
                                                        ),
                                                        Expanded(
                                                          child: selected(
                                                              text: 'Select'),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget(
                                                    name: 'Email * ',
                                                    text: 'Enter',
                                                    onTap: () {
                                                      // select(context);
                                                    }),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget(
                                                    name: 'Total Experience * ',
                                                    text: 'Enter',
                                                    onTap: () {
                                                      // select(context);
                                                    }),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget2(
                                                    name: 'Notice Period *  ',
                                                    text: 'Select',
                                                    onTap: () {
                                                      // select(context);
                                                    }),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget(
                                                    name:
                                                        'Current Designation ',
                                                    text: 'Enter',
                                                    onTap: () {
                                                      // select(context);
                                                    }),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Current Salary',
                                                      style: BaseStyles
                                                          .grey1Medium14,
                                                    ),
                                                    heightSpace5,
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        singlefiled(
                                                          color: AppColors
                                                              .greyprimarycolor
                                                              .shade300,
                                                          width: 60.0,
                                                          name: 'INR',
                                                        ),
                                                        Expanded(
                                                          child: selected(
                                                              text: 'Select'),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Expected Salary',
                                                      style: BaseStyles
                                                          .grey1Medium14,
                                                    ),
                                                    heightSpace5,
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        singlefiled(
                                                          color: AppColors
                                                              .greyprimarycolor
                                                              .shade300,
                                                          width: 60.0,
                                                          name: 'INR',
                                                        ),
                                                        Expanded(
                                                          child: selected(
                                                              text: 'Select'),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget2(
                                                    name: 'DOB',
                                                    text: 'Select',
                                                    icon: Icons.calendar_month),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget(
                                                    name: 'Street Name',
                                                    text: 'Enter'),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget2(
                                                    name: 'State',
                                                    text: 'Select'),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget2(
                                                    name: 'Country/Region',
                                                    text: 'Select'),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget2(
                                                    name: 'City/District',
                                                    text: 'Select'),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget(
                                                    name: 'Zip Code',
                                                    text: 'Enter',
                                                    onTap: () {
                                                      // select(context);
                                                    }),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget2(
                                                    name: 'Source * ',
                                                    text: 'Select'),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget(
                                                    height: 150.0,
                                                    readonly: true,
                                                    onTap: () {
                                                      Get.to(DescriptionView());
                                                    },
                                                    minline: 5,
                                                    maxline: 5,
                                                    name: 'Summary',
                                                    text: 'Write'),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                mybuttons(
                                                    action: () {
                                                      controller.index.value =
                                                          1;
                                                    },
                                                    name: 'Next',
                                                    color:
                                                        AppColors.orangecolor,
                                                    height: 40.0)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  : controller.index.value == 1
                                      ? _twoWidget()
                                      : controller.index.value == 2
                                          ? _threeWidget()
                                          : controller.index.value == 3
                                              ? _fourWidget()
                                              : Container()
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            )));
  }

  //////////////2////////////////////////////////////////////////////////////////

  _twoWidget() {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: AppColors.whiteColor,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Employment',
                                style: BaseStyles.blackMedium14,
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              // print('kk');
                              Get.to(AddemploymentView());
                            },
                            child: Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: AppColors.orangecolor,
                                    size: 16,
                                  ),
                                  // widthSpace20,
                                  widthSpace3,
                                  Text(
                                    'Add',
                                    style: BaseStyles.orangeMedium14,
                                  ),
                                  // widthSpace10,
                                ],
                              ),
                            ),
                          ),
                          // widthSpace10
                        ],
                      ),
                      heightSpace10,
                      Divider(
                        thickness: 0.5,
                      ),
                      heightSpace10,
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(0.0),
                                  color: AppColors.whiteColor,
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CircleAvatar(
                                                // backgroundColor: AppColors.primaryColor,
                                                radius: 16,
                                                child: Image.asset(
                                                    'assets/image/bajaj.png'),
                                              ),
                                              widthSpace10,
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'UI/UX Designer',
                                                        style: BaseStyles
                                                            .blackMedium14,
                                                      ),
                                                    ],
                                                  ),
                                                  heightSpace5,
                                                  Text(
                                                    'Tech Mahindra, Gurugram',
                                                    style: BaseStyles
                                                        .lightblackMedium12,
                                                  ),
                                                  heightSpace5,
                                                  Text(
                                                    'Dec 18 - Present . 3 year(s) 8 months',
                                                    style: BaseStyles
                                                        .lightblackMedium12,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: GestureDetector(
                                                onTap: () {},
                                                child: Image.asset(
                                                  MyImages.edit,
                                                  height: 16,
                                                  width: 16,
                                                )),
                                          ),
                                        ],
                                      ),
                                      heightSpace5,
                                      Text(
                                        'worked on several applications and coordinated with backend development team as well.',
                                        style: BaseStyles.blacNormal12,
                                      ),
                                      heightSpace10,
                                      // heightSpace5,

                                      // heightSpace5,
                                      Divider(
                                        thickness: 0.5,
                                      ),
                                      // heightSpace10,
                                    ],
                                  ),
                                ),
                                // heightSpace10
                              ],
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Expanded(child: Container()),
          mybuttons(
              width: Get.width * 0.95,
              action: () {
                controller.index.value = 2;
              },
              name: 'Next',
              color: AppColors.orangecolor,
              height: 40.0)
        ],
      ),
    );
  }

////////////////Education details////////////////////////////////

  _threeWidget() {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: AppColors.whiteColor,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Education',
                                style: BaseStyles.blackMedium14,
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              // print('kk');
                              Get.to(AddEducationView());
                            },
                            child: Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: AppColors.orangecolor,
                                    size: 16,
                                  ),
                                  // widthSpace20,
                                  widthSpace3,
                                  Text(
                                    'Add',
                                    style: BaseStyles.orangeMedium14,
                                  ),
                                  // widthSpace10,
                                ],
                              ),
                            ),
                          ),
                          // widthSpace10
                        ],
                      ),
                      heightSpace10,
                      Divider(
                        thickness: 0.5,
                      ),
                      heightSpace10,
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(0.0),
                                  color: AppColors.whiteColor,
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Bachelor of Computer Application',
                                                        style: BaseStyles
                                                            .blackMedium14,
                                                      ),
                                                    ],
                                                  ),
                                                  heightSpace5,
                                                  Text(
                                                    'IGNOU',
                                                    style: BaseStyles
                                                        .lightblackMedium12,
                                                  ),
                                                  heightSpace5,
                                                  Text(
                                                    '2009',
                                                    style: BaseStyles
                                                        .lightblackMedium12,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          GestureDetector(
                                              onTap: () {},
                                              child: Image.asset(
                                                MyImages.edit,
                                                height: 16,
                                                width: 16,
                                              )),
                                        ],
                                      ),

                                      heightSpace10,
                                      // heightSpace5,

                                      // heightSpace5,
                                      Divider(
                                        thickness: 0.5,
                                      ),
                                      // heightSpace10,
                                    ],
                                  ),
                                ),
                                // heightSpace10
                              ],
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ),
          mybuttons(
              width: Get.width * 0.95,
              action: () {
                controller.index.value = 3;
              },
              name: 'Next',
              color: AppColors.orangecolor,
              height: 40.0)
        ],
      ),
    );
  }

////////////////Certifications details////////////////////////////////

  _fourWidget() {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Container(
              color: AppColors.whiteColor,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Certifications',
                                style: BaseStyles.blackMedium14,
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              // print('kk');
                              Get.to(AddCertificationsView());
                            },
                            child: Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: AppColors.orangecolor,
                                    size: 16,
                                  ),
                                  // widthSpace20,
                                  widthSpace3,
                                  Text(
                                    'Add',
                                    style: BaseStyles.orangeMedium14,
                                  ),
                                  // widthSpace10,
                                ],
                              ),
                            ),
                          ),
                          // widthSpace10
                        ],
                      ),
                      heightSpace10,
                      Divider(
                        thickness: 0.5,
                      ),
                      heightSpace10,
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(0.0),
                                  color: AppColors.whiteColor,
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'Project Management Professional (PMP)®',
                                                        style: BaseStyles
                                                            .blackMedium14,
                                                      ),
                                                    ],
                                                  ),
                                                  heightSpace5,
                                                  Text(
                                                    'Project Management Institute',
                                                    style: BaseStyles
                                                        .lightblackMedium12,
                                                  ),
                                                  heightSpace5,
                                                  Text(
                                                    'Issued Jan 2022 · Expires Jan 2026',
                                                    style: BaseStyles
                                                        .lightblackMedium12,
                                                  ),
                                                  heightSpace5,
                                                  Text(
                                                    'Credential ID 5456484546',
                                                    style: BaseStyles
                                                        .lightblackMedium12,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          GestureDetector(
                                              onTap: () {},
                                              child: Image.asset(
                                                MyImages.edit,
                                                height: 16,
                                                width: 16,
                                              )),
                                        ],
                                      ),

                                      heightSpace10,
                                      // heightSpace5,

                                      // heightSpace5,
                                      Divider(
                                        thickness: 0.5,
                                      ),
                                      // heightSpace10,
                                    ],
                                  ),
                                ),
                                // heightSpace10
                              ],
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ),
          mybuttons(
              width: Get.width * 0.95,
              action: () {},
              name: 'Next',
              color: AppColors.orangecolor,
              height: 40.0)
        ],
      ),
    );
  }
}
