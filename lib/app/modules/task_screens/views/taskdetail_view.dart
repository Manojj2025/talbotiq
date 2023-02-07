import 'package:Talbotiq/app/modules/jobs_screens/views/totalapplication.dart';
import 'package:Talbotiq/app/widgets/buttons.dart';
import 'package:Talbotiq/app/widgets/decoration.dart';
import 'package:Talbotiq/app/widgets/filters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:readmore/readmore.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/jobdetailwidget.dart';
import '../../../widgets/search.dart';
import '../../../widgets/textfiled.dart';
import '../controllers/taskdetail_controller.dart';

class TaskdetailView extends GetView<TaskdetailController> {
  const TaskdetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => TaskdetailController());
    return Scaffold(
      appBar: myappbar2(
        title: HomeName.ProjectDetails,
        show: true,
      ),
      body: Obx(
        () => ListView(
          children: [
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
                        children: [
                          Image.asset(
                            'assets/image/lock.png',
                            height: 14,
                            width: 14,
                            color: AppColors.greyprimarycolor,
                          ),
                          widthSpace10,
                          Text(
                            'Project Name',
                            style: BaseStyles.blackMedium16,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Icon(Icons.bookmark,
                                  size: 16, color: AppColors.yellowcolor),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  heightSpace10,
                  Divider(
                    thickness: 0.5,
                  ),
                  heightSpace5,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 130,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                                left: 0,
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Color(0xffE9E9E9),
                                  child: Text(
                                    'A',
                                    style: TextStyle(
                                        color: Color(0xff828282),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp),
                                  ),
                                )),
                            Positioned(
                                left: 20,
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Color(0xffE1F8FF),
                                  child: Text(
                                    'R',
                                    style: TextStyle(
                                        color: Color(0xff56CCF2),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp),
                                  ),
                                )),
                            Positioned(
                                left: 40,
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Color(0xffF8E5FF),
                                  child: Text(
                                    'K',
                                    style: TextStyle(
                                        color: Color(0xffBB6BD9),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp),
                                  ),
                                )),
                            Positioned(
                                left: 60,
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Color(0xffFFEDDD),
                                  child: Text(
                                    'S',
                                    style: TextStyle(
                                        color: Color(0xffF2994A),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.sp),
                                  ),
                                )),
                            Positioned(
                                left: 95,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: AppColors.greycolor2,
                                      size: 10,
                                    ),
                                    Text(
                                      '10',
                                      style: BaseStyles.blacNormal12,
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'No Status',
                            style: BaseStyles.lightblackMedium12,
                          ),
                          widthSpace5,
                          Icon(
                            Icons.arrow_drop_down,
                            color: AppColors.greyprimarycolor,
                          )
                        ],
                      )
                    ],
                  ),

                  // heightSpace10,
                ],
              ),
            ),
            heightSpace10,
            _item(),
            heightSpace10,
            controller.selectname.value == 'Opportunity Details'
                ? Column(
                    children: [
                      Overview(),
                      heightSpace10,
                      leadDetails(),
                      heightSpace10,
                      Details(),
                    ],
                  )
                : Container()
          ],
        ),
      ),
    );
  }

//////////////////////////attachments///////////////////////////////////
  Widget attachments(context) {
    return Container(
      // margin: const EdgeInsets.only(top: 10),
      width: Get.width,
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Attachments',
                  style: BaseStyles.blackMedium14,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: AppColors.orangecolor,
                      size: 16,
                    ),
                    widthSpace5,
                    Text(
                      'Add',
                      style: BaseStyles.orangeMedium14,
                    ),
                    widthSpace10,
                  ],
                ),
                // widthSpace10
              ],
            ),
            heightSpace10,
            Divider(
              thickness: 0.5,
            ),
            _listAttachWidget()
          ],
        ),
      ),
    );
  }

//////////////////////////notes///////////////////////////////////
  Widget notes() {
    return Container(
      // margin: const EdgeInsets.only(top: 10),
      width: Get.width,
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Notes',
                      style: BaseStyles.blackMedium14,
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: AppColors.orangecolor,
                      size: 16,
                    ),
                    // widthSpace20,
                    Text(
                      'Add',
                      style: BaseStyles.orangeMedium14,
                    ),
                    widthSpace10,
                  ],
                ),
                // widthSpace10
              ],
            ),
            Divider(
              thickness: 0.5,
            ),
            _listnotesWidget()
          ],
        ),
      ),
    );
  }

  //////////////////// job list widget ui////////////////////////////////
  _listnotesWidget() {
    return ListView.builder(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Having experience of more than 5 years in UI development for Web Application and Mobile applciations.',
                              style: BaseStyles.blacNormal14,
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert_outlined,
                                size: 16,
                                color: AppColors.greyprimarycolor,
                              )),
                        ]),
                    heightSpace10,
                    heightSpace5,
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
                    heightSpace5,
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
        });
  }

//////////////////////////Activities///////////////////////////////////
  Widget Activities(context) {
    return Container(
      // margin: const EdgeInsets.only(top: 10),
      width: Get.width,
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    status(
                        size: 0.3,
                        button: mybuttons(
                            width: Get.width * 0.90,
                            action: () {
                              Get.back();
                            },
                            name: 'Submit',
                            radius: 5.0,
                            color: AppColors.orangecolor,
                            height: 45.0),
                        context: context,
                        list: controller.activity,
                        controller: controller,
                        title: 'Activity status');
                  },
                  child: Row(
                    children: [
                      Text(
                        'Open Activities',
                        style: BaseStyles.blackMedium14,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.greyprimarycolor,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: AppColors.orangecolor,
                      size: 16,
                    ),
                    widthSpace5,
                    Text(
                      'Add',
                      style: BaseStyles.orangeMedium14,
                    ),
                    widthSpace10,
                  ],
                ),
                // widthSpace10
              ],
            ),
            heightSpace10,
            Divider(
              thickness: 0.5,
            ),
            _listActivitiesWidget()
          ],
        ),
      ),
    );
  }

  //////////////////// job list widget ui////////////////////////////////
  _listAttachWidget() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  color: AppColors.whiteColor,
                  child: Column(
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/image/i.png'),
                            widthSpace10,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Media title',
                                    style: BaseStyles.blackMedium14,
                                  ),
                                  heightSpace5,
                                  Text(
                                    'Reference site information on its origins',
                                    style: BaseStyles.blacNormal14,
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
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
                                          heightFactor: 0.8,
                                          child: Container(
                                            // height: 300,
                                            decoration: MyDecoration
                                                .radiusonlydecoration(
                                                    tlradius: 25.0,
                                                    trradius: 25.0),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  heightSpace20,
                                                  Align(
                                                    child: Container(
                                                      height: 4,
                                                      width: 160,
                                                      decoration: MyDecoration
                                                          .simpledecoration(
                                                              color: AppColors
                                                                  .greyprimarycolor),
                                                    ),
                                                  ),
                                                  heightSpace20,
                                                  Text(
                                                    'Attachment',
                                                    style: BaseStyles
                                                        .blackMedium16,
                                                  ),
                                                  // heightSpace10,
                                                  // const Divider(
                                                  //   thickness: 0.3,
                                                  //   height: 25,
                                                  // ),
                                                  Image.asset(
                                                    'assets/image/i2.png',
                                                    width: Get.width,
                                                    height: 100,
                                                  ),
                                                  Text(
                                                    'Resume.pdf',
                                                    style: BaseStyles
                                                        .grey1normal12,
                                                  ),
                                                  const Divider(
                                                    thickness: 0.3,
                                                    height: 25,
                                                  ),
                                                  textwidget(
                                                      name: 'Title* * ',
                                                      text: 'Enter'),
                                                  const Divider(
                                                    thickness: 0.3,
                                                    height: 25,
                                                  ),
                                                  textwidget(
                                                      height: 150.0,
                                                      readonly: false,
                                                      onTap: () {},
                                                      minline: 5,
                                                      maxline: 5,
                                                      name: 'Summary * ',
                                                      text: 'Write'),
                                                  const Divider(
                                                    thickness: 0.3,
                                                    height: 25,
                                                  ),
                                                  heightSpace30,
                                                  mybuttons(
                                                      action: () {
                                                        Get.back();
                                                      },
                                                      name: 'Upload',
                                                      radius: 5.0,
                                                      color:
                                                          AppColors.orangecolor,
                                                      height: 45.0)
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: Image.asset(
                                  MyImages.edit,
                                  height: 15,
                                  width: 15,
                                )),
                          ]),
                      heightSpace10,

                      Divider(
                        thickness: 0.5,
                      ),
                      // heightSpace10,
                    ],
                  ),
                ),
              ),
              // heightSpace10
            ],
          );
        });
  }

  //////////////////// job list widget ui////////////////////////////////
  _listActivitiesWidget() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
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
                          heightFactor: 0.51,
                          child: Container(
                            // height: 300,
                            decoration: MyDecoration.radiusonlydecoration(
                                tlradius: 25.0, trradius: 25.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  heightSpace20,
                                  Container(
                                    height: 4,
                                    width: 160,
                                    decoration: MyDecoration.simpledecoration(
                                        color: AppColors.greyprimarycolor),
                                  ),
                                  heightSpace20,
                                  Text(
                                    'Activity Details',
                                    style: BaseStyles.blackMedium16,
                                  ),
                                  heightSpace10,
                                  const Divider(
                                    thickness: 0.3,
                                    height: 25,
                                  ),
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        widthSpace10,
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Contact client',
                                                style: BaseStyles.blackMedium16,
                                              ),
                                              Text(
                                                'Created By : Ihsan Ahmad Nainy, Sept. 5...',
                                                style: BaseStyles.blacNormal14,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 5),
                                          decoration: decorationbox2(
                                              color: AppColors.primaryColor2
                                                  .withOpacity(0.2),
                                              radius: 30.0),
                                          child: Text(
                                            'Open',
                                            style: BaseStyles.greenMedium11,
                                          ),
                                        )
                                      ]),
                                  heightSpace10,
                                  const Divider(
                                    thickness: 0.3,
                                    height: 25,
                                  ),
                                  Row(
                                    children: [
                                      widthSpace10,
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Activity Type',
                                              style:
                                                  BaseStyles.lightblackMedium12,
                                            ),
                                            heightSpace5,
                                            Text(
                                              'New Appointment',
                                              style: BaseStyles.blacNormal14,
                                            )
                                          ],
                                        ),
                                      ),
                                      // widthSpace20,
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Assigned To	',
                                              style:
                                                  BaseStyles.lightblackMedium12,
                                            ),
                                            heightSpace5,
                                            Text(
                                              'Ihsan Ahmad Nainy',
                                              style: BaseStyles.blacNormal14,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  heightSpace20,
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.s,
                                    children: [
                                      widthSpace10,
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Start Date & Time	',
                                              style:
                                                  BaseStyles.lightblackMedium12,
                                            ),
                                            heightSpace5,
                                            Text(
                                              'Sept. 5, 2022, midnight	',
                                              style: BaseStyles.blacNormal14,
                                            )
                                          ],
                                        ),
                                      ),
                                      // widthSpace50,
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'End Date & Time	',
                                              style:
                                                  BaseStyles.lightblackMedium12,
                                            ),
                                            heightSpace5,
                                            Text(
                                              'Sept. 5, 2022, midnight	',
                                              style: BaseStyles.blacNormal14,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  // heightSpace10,
                                  const Divider(
                                    thickness: 0.3,
                                    height: 25,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Last Modified : Sept. 5, 2022, 10:48 AM',
                                        style: BaseStyles.lightblackMedium12,
                                      ),
                                    ),
                                  ),
                                  heightSpace30,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      mybuttons(
                                          border: Border.all(
                                              color: AppColors
                                                  .greyprimarycolor.shade200),
                                          width: 150.0,
                                          action: () {
                                            Get.back();
                                          },
                                          name: 'Delete',
                                          radius: 5.0,
                                          style: BaseStyles.blackMedium16,
                                          color: AppColors.whiteColor,
                                          height: 45.0),
                                      mybuttons(
                                          width: 150.0,
                                          action: () {
                                            Get.back();
                                          },
                                          name: 'Edit',
                                          radius: 5.0,
                                          color: AppColors.orangecolor,
                                          height: 45.0),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  color: AppColors.whiteColor,
                  child: Column(
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.add_box_rounded,
                              color: AppColors.greyprimarycolor,
                              size: 18,
                            ),
                            widthSpace10,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Contact client',
                                    style: BaseStyles.blackMedium14,
                                  ),
                                  Text(
                                    'Created By : Ihsan Ahmad Nainy, Sept. 5...',
                                    style: BaseStyles.blacNormal14,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              decoration: decorationbox2(
                                  color:
                                      AppColors.primaryColor2.withOpacity(0.2),
                                  radius: 30.0),
                              child: Text(
                                'Open',
                                style: BaseStyles.greenMedium11,
                              ),
                            )
                          ]),
                      heightSpace10,

                      Divider(
                        thickness: 0.5,
                      ),
                      // heightSpace10,
                    ],
                  ),
                ),
              ),
              // heightSpace10
            ],
          );
        });
  }

//////  details////////////////////////////////
  Widget Details() {
    return Container(
        // height: 50,
        width: Get.width,
        color: AppColors.whiteColor,
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Details',
                      style: BaseStyles.blackMedium14,
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
              ),
              Divider(
                thickness: 0.5,
              ),
              heightSpace5,
              heightSpace5,
              Text(
                'Having experience of more than 5 years in UI development for Web Application and Mobile applciations.',
                style: BaseStyles.blacNormal14,
              ),
              heightSpace50,
            ],
          ),
        ));
  }

////// job details////////////////////////////////
  Widget leadDetails({title, title2}) {
    return Container(
        // height: 50,
        width: Get.width,
        color: AppColors.whiteColor,
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Client Details',
                      style: BaseStyles.blackMedium14,
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
              ),
              Divider(
                thickness: 0.5,
              ),
              heightSpace5,
              heightSpace5,
              Row(
                children: [
                  widthSpace10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Opportunity Title',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'Raman',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  ),
                  // widthSpace20,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Division',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'North',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  )
                ],
              ),
              heightSpace20,
              Row(
                // mainAxisAlignment: MainAxisAlignment.s,
                children: [
                  widthSpace10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Stage Probability (%)',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          '50',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  ),
                  // widthSpace50,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Opportunity Owner',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'Raghav',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  )
                ],
              ),
              heightSpace20,
              Row(
                // mainAxisAlignment: MainAxisAlignment.s,
                children: [
                  widthSpace10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expected Order Amount',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'MYR 500,000.00',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  ),
                  // widthSpace50,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Probability (%)',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          '80',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  )
                ],
              ),
              heightSpace20,
              Row(
                // mainAxisAlignment: MainAxisAlignment.s,
                children: [
                  widthSpace10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Account Name',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'XYZ Pvt Ltd',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  ),
                  // widthSpace50,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Exchange Rate',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'NaN',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  )
                ],
              ),
              heightSpace20,
              Row(
                // mainAxisAlignment: MainAxisAlignment.s,
                children: [
                  widthSpace10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Opportunity Status',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'Won',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  ),
                  // widthSpace50,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Opportunity Type',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'Existing Business',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  )
                ],
              ),
              heightSpace20,
              Row(
                // mainAxisAlignment: MainAxisAlignment.s,
                children: [
                  widthSpace10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Closing Date',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'Jan. 31, 2023',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  ),
                  // widthSpace50,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expected Revenue',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'MYR 50,000.00',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  )
                ],
              ),
              heightSpace20,
              Row(
                // mainAxisAlignment: MainAxisAlignment.s,
                children: [
                  widthSpace10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Opportunity Source',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'Public Relations',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  ),
                  // widthSpace50,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Opportunity Stages',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'Sales Order',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  )
                ],
              ),
              heightSpace20,
              Row(
                // mainAxisAlignment: MainAxisAlignment.s,
                children: [
                  widthSpace10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contact Name',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'XYZ ABC',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  ),
                  // widthSpace50,
                ],
              ),
              heightSpace10,
            ],
          ),
        ));
  }

/////// designation////////////////////////////////////////////////////////////////
  Widget Overview({padding}) {
    return Container(
      color: AppColors.whiteColor,
      width: Get.width,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(10.0),
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
                      backgroundColor: Color(0xffECF7F3),
                      child: Icon(
                        Icons.phone,
                        size: 20,
                        color: AppColors.primaryColor,
                      ),
                      radius: 17,
                    ),
                    widthSpace10,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone',
                          style: BaseStyles.grey3medium12,
                        ),
                        Text(
                          '+60 13479739479',
                          style: BaseStyles.blacNormal14,
                        ),
                        heightSpace5,
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.copy,
                            size: 16, color: AppColors.greyprimarycolor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            heightSpace5,
            Divider(
              thickness: 0.5,
            ),
            heightSpace5,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xffECF7F3),
                      child: Icon(
                        Icons.email,
                        size: 20,
                        color: AppColors.primaryColor,
                      ),
                      radius: 17,
                    ),
                    widthSpace10,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: BaseStyles.grey3medium12,
                        ),
                        Text(
                          'raman@gmail.com',
                          style: BaseStyles.blacNormal14,
                        ),
                        heightSpace5,
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.copy,
                            size: 16, color: AppColors.greyprimarycolor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget leadbutton(context) {
    return Container(
        // height: 50,
        width: Get.width,
        color: AppColors.whiteColor,
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
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
                                  decoration: MyDecoration.radiusonlydecoration(
                                      tlradius: 25.0, trradius: 25.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        heightSpace20,
                                        Container(
                                          height: 4,
                                          width: 160,
                                          decoration:
                                              MyDecoration.simpledecoration(
                                                  color: AppColors
                                                      .greyprimarycolor),
                                        ),
                                        heightSpace20,
                                        Text(
                                          'Convert Lead',
                                          style: BaseStyles.blackMedium16,
                                        ),
                                        heightSpace10,
                                        const Divider(
                                          thickness: 0.3,
                                          height: 25,
                                        ),
                                        textwidget(
                                            name: 'Lead Name * ',
                                            text: 'Select'),
                                        const Divider(
                                          thickness: 0.3,
                                          height: 25,
                                        ),
                                        textwidget(
                                            name: 'Account * ', text: 'Select'),
                                        const Divider(
                                          thickness: 0.3,
                                          height: 25,
                                        ),
                                        textwidget2(
                                            name: 'Contact * ', text: 'Select'),
                                        const Divider(
                                          thickness: 0.3,
                                          height: 25,
                                        ),
                                        textwidget(
                                            name: 'Assign To * ',
                                            text: 'Select'),
                                        const Divider(
                                          thickness: 0.3,
                                          height: 25,
                                        ),
                                        textwidget(
                                            name: 'Opportunity Name * ',
                                            text: 'Select'),
                                        const Divider(
                                          thickness: 0.3,
                                          height: 25,
                                        ),
                                        Container(
                                          // color: AppColors.blackcolor,
                                          child: Row(
                                            children: [
                                              Theme(
                                                  data: Theme.of(context)
                                                      .copyWith(
                                                          unselectedWidgetColor:
                                                              AppColors
                                                                  .greycolor2),
                                                  child: SizedBox(
                                                      height: 20.0,
                                                      width: 20.0,
                                                      child: Checkbox(
                                                        materialTapTargetSize:
                                                            MaterialTapTargetSize
                                                                .shrinkWrap,
                                                        activeColor: AppColors
                                                            .primaryColor,
                                                        // checkColor: AppColors.secondary2Color,
                                                        value: controller
                                                            .agree.value,
                                                        onChanged: (value) {
                                                          controller
                                                                  .agree.value =
                                                              value ?? false;
                                                        },
                                                      ))),
                                              widthSpace10,
                                              Expanded(
                                                child: Text(
                                                  'Do not create a new Opportunity name upon conversion',
                                                  style:
                                                      BaseStyles.blacNormal14,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        heightSpace30,
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
                                ),
                              );
                            });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 150,
                        decoration: decorationbox2(
                            radius: 5.0,
                            color: AppColors.orangecolor.withOpacity(0.2)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_add_alt,
                              color: AppColors.orangecolor,
                              size: 16,
                            ),
                            widthSpace5,
                            Text(
                              'Assign',
                              style: BaseStyles.orangenormal14,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  widthSpace20,
                  Expanded(
                    child: GestureDetector(
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
                                heightFactor: 0.8,
                                child: Container(
                                  // height: 300,
                                  decoration: MyDecoration.radiusonlydecoration(
                                      tlradius: 25.0, trradius: 25.0),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        heightSpace20,
                                        Container(
                                          height: 4,
                                          width: 160,
                                          decoration:
                                              MyDecoration.simpledecoration(
                                                  color: AppColors
                                                      .greyprimarycolor),
                                        ),
                                        heightSpace20,
                                        Text(
                                          'Assign to',
                                          style: BaseStyles.blackMedium16,
                                        ),
                                        heightSpace10,
                                        ////
                                        mysearch(
                                            width: Get.width,
                                            readonly: false,
                                            decoration: decorationbox2(
                                                radius: 5.0,
                                                color: AppColors
                                                    .greyprimarycolor
                                                    .shade200)),
                                        heightSpace10,
                                        Expanded(
                                          child: ListView.builder(
                                              shrinkWrap: true,
                                              itemCount: 3,
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return ListTile(
                                                  horizontalTitleGap: 2.0,
                                                  dense: true,
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          left: 15),
                                                  title: Text(
                                                    'Nikita Sharma',
                                                    style:
                                                        BaseStyles.blacNormal14,
                                                  ),
                                                  subtitle: Text(
                                                    'nikita@gmail.com',
                                                    style: BaseStyles
                                                        .grey2Medium12,
                                                  ),
                                                  trailing: Theme(
                                                      data: Theme.of(context).copyWith(
                                                          unselectedWidgetColor:
                                                              AppColors
                                                                  .greyprimarycolor
                                                                  .shade400),
                                                      child: SizedBox(
                                                          height: 20.0,
                                                          width: 20.0,
                                                          child: Checkbox(
                                                            materialTapTargetSize:
                                                                MaterialTapTargetSize
                                                                    .shrinkWrap,
                                                            activeColor: AppColors
                                                                .primaryColor,
                                                            // checkColor: AppColors.secondary2Color,
                                                            value: controller
                                                                .agree.value,
                                                            onChanged: (value) {
                                                              controller.agree
                                                                      .value =
                                                                  value ??
                                                                      false;
                                                            },
                                                          ))),
                                                  leading: CircleAvatar(
                                                    // backgroundColor: AppColors.primaryColor,
                                                    radius: 16,
                                                    child: Image.asset(
                                                        'assets/image/bajaj.png'),
                                                  ),
                                                );
                                              }),
                                        ),
                                        heightSpace30,
                                        mybuttons(
                                            action: () {
                                              Get.back();
                                            },
                                            name: 'Assign',
                                            radius: 5.0,
                                            color: AppColors.orangecolor,
                                            height: 45.0),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 150,
                        decoration: decorationbox2(
                            radius: 5.0,
                            color: AppColors.primaryColor.withOpacity(0.2)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.refresh,
                              color: AppColors.primaryColor,
                              size: 16,
                            ),
                            widthSpace5,
                            Text(
                              'Convert',
                              style: BaseStyles.greennormal14,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }

//   //////////////////// job name list widget ui////////////////////////////////
  Widget _item() {
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
                      GestureDetector(
                        onTap: () {
                          controller.selectname.value =
                              controller.list[index]['name'].toString();
                        },
                        child: Container(
                          height: 30,
                          // width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: controller.selectname.value ==
                                      controller.list[index]['name']
                                  ? AppColors.primaryColor
                                  : AppColors.whiteColor,
                              border: Border.all(
                                  color: AppColors.greyprimarycolor,
                                  width: 0.2),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Row(
                              children: [
                                ImageIcon(
                                  AssetImage(
                                      controller.list[index]['img'].toString()),
                                  size: 15,
                                  color: controller.selectname.value ==
                                          controller.list[index]['name']
                                      ? AppColors.whiteColor
                                      : AppColors.greycolor3,
                                ),
                                widthSpace5,
                                Text(
                                  controller.list[index]['value'] == ""
                                      ? controller.list[index]['name']
                                          .toString()
                                      : "${controller.list[index]['name'].toString()}",
                                  style: controller.selectname.value ==
                                          controller.list[index]['name']
                                      ? BaseStyles.whitemedium14
                                      : BaseStyles.greyMedium14,
                                ),
                              ],
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
