import 'package:Talbotiq/app/modules/jobs_screens/views/totalapplication.dart';
import 'package:Talbotiq/app/modules/task_screens/views/group_view.dart';
import 'package:Talbotiq/app/modules/task_screens/views/todotask.dart';
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
import '../controllers/groupdetail_controller.dart';
import '../controllers/projectdetail_controller.dart';
import 'createnewgroup_view.dart';

class GroupdetailView extends GetView<GroupdetailController> {
  const GroupdetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => GroupdetailController());
    return Scaffold(
      appBar: myappbar2(
        ontab1: () {
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
                  heightFactor: 0.32,
                  child: Container(
                    // height: 300,
                    decoration: MyDecoration.radiusonlydecoration(
                        tlradius: 25.0, trradius: 25.0),
                    child: Column(
                      children: [
                        heightSpace20,
                        Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: controller.project.length,
                              itemBuilder: (BuildContext context, int index) {
                                // int i = index;
                                return GestureDetector(
                                  onTap: () {
                                    switch (index) {
                                      case 1:
                                        Get.back();
                                        Get.to(CreateNewGroupView());

                                        break;
                                      default:
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15.0,
                                        right: 15.0,
                                        bottom: 10,
                                        top: 10),
                                    child: Container(
                                      decoration: decorationbox(
                                          border: Border.all(
                                              color: AppColors
                                                  .greyprimarycolor.shade300)),
                                      child: ListTile(
                                          minLeadingWidth: 25.0,
                                          horizontalTitleGap: 2.0,
                                          dense: true,
                                          contentPadding:
                                              const EdgeInsets.only(left: 15),
                                          title: Text(
                                            controller.project[index]
                                                .toString(),
                                            style: BaseStyles.blacNormal14,
                                          ),
                                          leading: Icon(
                                            Icons.add,
                                            size: 18,
                                            color: AppColors.greycolor3,
                                          )),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        heightSpace10
                      ],
                    ),
                  ),
                );
              });
        },
        title: HomeName.GroupDetails,
        icon1: Icons.add,
        show: true,
      ),
      body: Obx(
        () => Column(
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
                          Icon(
                            Icons.folder_outlined,
                            size: 20,
                            color: AppColors.primaryColor,
                          ),
                          widthSpace10,
                          Text(
                            'Group Name Here',
                            style: BaseStyles.blackMedium16,
                          ),
                        ],
                      ),
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
                                  radius: 10,
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
                                left: 15,
                                child: CircleAvatar(
                                  radius: 10,
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
                                left: 30,
                                child: CircleAvatar(
                                  radius: 10,
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
                                left: 45,
                                child: CircleAvatar(
                                  radius: 10,
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
                                left: 70,
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
                          Icon(
                            Icons.calendar_today_rounded,
                            color: AppColors.greyprimarycolor,
                            size: 12,
                          ),
                          widthSpace5,
                          Text(
                            'Oct 10, 2022',
                            style: BaseStyles.grey3medium12,
                          ),
                        ],
                      ),
                    ],
                  ),

                  // heightSpace10,
                ],
              ),
            ),
            heightSpace10,
            _item(),
            heightSpace10,
            controller.selectname.value == 'Projects (2)'
                ? _listWidget()
                : _subgroupWidget()
          ],
        ),
      ),
    );
  }

  //////////////////// job application list widget ui////////////////////////////////
  _subgroupWidget() {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(const GroupdetailView());
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
                            Row(
                              children: [
                                Icon(
                                  Icons.folder_outlined,
                                  size: 20,
                                  color: AppColors.primaryColor,
                                ),
                                widthSpace10,
                                Text(
                                  'Group Name Here',
                                  style: BaseStyles.blackMedium16,
                                ),
                              ],
                            ),
                            IconButton(
                                padding: EdgeInsets.zero,
                                constraints:
                                    BoxConstraints(minWidth: 0, minHeight: 0),
                                onPressed: () {
                                  // jobedit(
                                  //   ontab: (value) {
                                  //     switch (value) {
                                  //       case 0:
                                  //         // Get.to(SettingView());

                                  //         break;
                                  //       default:
                                  //     }
                                  //   },
                                  //   height: 0.25,
                                  //   context: context,
                                  //   controller: controller,
                                  //   listname: controller.editlist,
                                  //   icon: controller.editlist,
                                  // );
                                },
                                icon: Icon(
                                  Icons.more_vert_outlined,
                                  size: 16,
                                  color: AppColors.greyprimarycolor,
                                ))
                          ],
                        ),

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
                                        radius: 10,
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
                                      left: 15,
                                      child: CircleAvatar(
                                        radius: 10,
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
                                      left: 30,
                                      child: CircleAvatar(
                                        radius: 10,
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
                                      left: 45,
                                      child: CircleAvatar(
                                        radius: 10,
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
                                      left: 70,
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
                          ],
                        ),
                        Divider(
                          thickness: 0.5,
                        ),

                        // heightSpace10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today_rounded,
                                  color: AppColors.greyprimarycolor,
                                  size: 12,
                                ),
                                widthSpace5,
                                Text(
                                  'Oct 10, 2022',
                                  style: BaseStyles.grey3medium12,
                                ),
                              ],
                            ),
                            Container(
                              decoration: decorationbox(
                                  radius: 30.0, color: Color(0xffF2F2F2)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Text(
                                  '1 Projects',
                                  style: BaseStyles.grey2normal12,
                                ),
                              ),
                            )
                          ],
                        ),
                        heightSpace10
                      ],
                    ),
                  ),
                ),
                heightSpace10
              ],
            );
          }),
    );
  }

//   ////////////////////  name list widget ui////////////////////////////////
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
                            child: Text(
                              controller.list[index]['value'] == ""
                                  ? controller.list[index]['name'].toString()
                                  : "${controller.list[index]['name'].toString()}",
                              style: controller.selectname.value ==
                                      controller.list[index]['name']
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

  ////////////////////  application list widget ui////////////////////////////////
  _listWidget() {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 3,
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
                            Row(
                              children: [
                                Image.asset(
                                  index == 2
                                      ? 'assets/image/unlock.png'
                                      : 'assets/image/lock.png',
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
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(Icons.bookmark,
                                      size: 18, color: AppColors.yellowcolor),
                                ),
                                widthSpace10,
                                IconButton(
                                    padding: EdgeInsets.zero,
                                    constraints: BoxConstraints(
                                        minWidth: 0, minHeight: 0),
                                    onPressed: () {
                                      jobedit(
                                        ontab: (value) {
                                          switch (value) {
                                            case 0:
                                              // Get.to(SettingView());

                                              break;
                                            default:
                                          }
                                        },
                                        height: 0.25,
                                        context: context,
                                        controller: controller,
                                        listname: controller.editlist,
                                        icon: controller.editlist,
                                      );
                                    },
                                    icon: Icon(
                                      Icons.more_vert_outlined,
                                      size: 16,
                                      color: AppColors.greyprimarycolor,
                                    )),
                              ],
                            )
                          ],
                        ),
                        heightSpace10,
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
                                        radius: 10,
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
                                      left: 15,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: AppColors.bluecolor,
                                        child: Text(
                                          'R',
                                          style: BaseStyles.whitenormal12,
                                        ),
                                      )),
                                  Positioned(
                                      left: 30,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.purpleAccent,
                                        child: Text(
                                          'K',
                                          style: BaseStyles.whitenormal12,
                                        ),
                                      )),
                                  Positioned(
                                      left: 45,
                                      child: CircleAvatar(
                                        radius: 10,
                                        backgroundColor: Colors.orangeAccent,
                                        child: Text(
                                          'S',
                                          style: BaseStyles.whitenormal12,
                                        ),
                                      )),
                                  Positioned(
                                      left: 70,
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
                        Divider(
                          thickness: 0.5,
                        ),

                        // heightSpace10,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '70% Completed',
                                  style: BaseStyles.lightblackMedium14,
                                ),
                                Text(
                                  '7/10 Task',
                                  style: BaseStyles.lightblackMedium14,
                                ),
                              ],
                            ),
                            heightSpace10,
                            LinearPercentIndicator(
                                padding: EdgeInsets.zero,
                                alignment: MainAxisAlignment.start,
                                // width: Get.width * 0.95,
                                lineHeight: 6.0,
                                percent: 0.5,
                                animation: true,
                                barRadius: const Radius.circular(20),
                                // center:
                                //     Text("50.0%", style: BaseStyles.whitebold14),
                                // trailing: Icon(Icons.mood),

                                backgroundColor:
                                    AppColors.greyprimarycolor.shade200,
                                progressColor: AppColors.primaryColor),
                          ],
                        ),
                        heightSpace10
                      ],
                    ),
                  ),
                ),
                heightSpace10
              ],
            );
          }),
    );
  }
}
