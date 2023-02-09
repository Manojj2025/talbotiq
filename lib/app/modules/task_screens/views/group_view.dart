import 'package:Talbotiq/app/modules/task_screens/views/projectdetail_view.dart';
import 'package:Talbotiq/app/widgets/decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../constants/values.dart';
import '../../../widgets/filters.dart';
import '../controllers/group_controller.dart';
import '../controllers/task_controller.dart';
import 'create_newtask_view.dart';
import 'groupdetail_view.dart';

class GroupView extends GetView<GroupController> {
  const GroupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => GroupController());
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 30,
          title: Text(
            HomeName.Groups,
            style: BaseStyles.whiteMedium16,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: AppColors.whiteColor,
                    size: 18,
                  ),
                  widthSpace10,
                  // widthSpace5,
                  GestureDetector(
                    onTap: () {
                      Get.to(const CreateNewView());
                      // Get.to(CandidateNewTaskView());
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: AppColors.whiteColor,
                            size: 18,
                          ),
                          widthSpace5,
                          Text(
                            'New',
                            style: BaseStyles.whitebold14,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        body: Column(
          children: [
            //// filters and soryby widget ui//////
            Card(
              elevation: 0,
              color: AppColors.whiteColor,
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        filter(context, controller);
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            MyImages.filter,
                            height: 20,
                            width: 20,
                          ),
                          widthSpace10,
                          Text(
                            JobsName.filters,
                            style: BaseStyles.lightblackMedium14,
                          ),
                          widthSpace5,
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColors.primaryColor,
                            child: Text(
                              '2',
                              style: BaseStyles.whitesmall10,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 1,
                      color: AppColors.greyprimarycolor,
                    ),
                    GestureDetector(
                      onTap: () {
                        sortby(context, controller);
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            MyImages.sort,
                            height: 20,
                            width: 20,
                          ),
                          widthSpace10,
                          Text(
                            JobsName.sortby,
                            style: BaseStyles.lightblackMedium14,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            heightSpace10,
            _listWidget()
          ],
        ));
  }

  //////////////////// job application list widget ui////////////////////////////////
  _listWidget() {
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
                        // heightSpace10,
                        // heightSpace5,
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
                            Row(
                              children: [
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
                                ),
                                widthSpace10,
                                Container(
                                  decoration: decorationbox(
                                      radius: 30.0, color: Color(0xffF2F2F2)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Text(
                                      '0 Subgroups',
                                      style: BaseStyles.grey2normal12,
                                    ),
                                  ),
                                )
                              ],
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
}
