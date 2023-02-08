import 'package:Talbotiq/app/modules/task_screens/views/projectdetail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../constants/values.dart';
import '../../../widgets/filters.dart';
import '../controllers/task_controller.dart';
import 'create_newtask_view.dart';

class TaskView extends GetView<TaskController> {
  const TaskView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => TaskController());
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 30,
          title: Text(
            HomeName.project,
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
            //////////////////// job name list widget ui////////////////////////////////
            heightSpace10,
            _name(), heightSpace10,
            _listWidget()
          ],
        ));
  }

  //////////////////// job name list widget ui////////////////////////////////
  _name() {
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
                          controller.jobselectname.value =
                              controller.list[index]['name'].toString();
                        },
                        child: Container(
                          height: 30,
                          // width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: controller.jobselectname.value ==
                                      controller.list[index]['name']
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
                              "${controller.list[index]['name'].toString()} (${controller.list[index]['value'].toString()})",
                              style: controller.jobselectname.value ==
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
                    Get.to(const ProjectdetailView());
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
                                      size: 16, color: AppColors.yellowcolor),
                                ),
                                widthSpace10,
                                IconButton(
                                    padding: EdgeInsets.zero,
                                    constraints: BoxConstraints(
                                        minWidth: 0, minHeight: 0),
                                    onPressed: () {
                                      jobedit(
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
