import 'package:Talbotiq/app/modules/jobs_screens/views/totalapplication.dart';
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
import '../controllers/projectdetail_controller.dart';

class ProjectdetailView extends GetView<ProjectdetailController> {
  const ProjectdetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ProjectdetailController());
    return Scaffold(
      appBar: myappbar2(
        title: HomeName.ProjectDetails,
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
            controller.selectname.value == 'Tree View'
                ? treeview()
                : controller.selectname.value == 'Board'
                    ? TodoTask()
                    : Container()
          ],
        ),
      ),
    );
  }

  Widget treeview() {
    return Expanded(
      child: ListView.builder(
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  color: AppColors.whiteColor,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          widthSpace10,
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Icon(
                              Icons.add_box_outlined,
                              size: 16,
                              color: AppColors.greycolor3,
                            ),
                          ),
                          widthSpace20,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          decoration: decorationbox(
                                              radius: 5.0,
                                              color: AppColors.yellowcolor),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Icon(
                                              Icons.remove_red_eye_outlined,
                                              color: AppColors.whiteColor,
                                              size: 12,
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          size: 20,
                                          color: AppColors.greycolor3,
                                        ),
                                        widthSpace5,
                                        SizedBox(
                                          width: Get.width * 0.50,
                                          child: Text(
                                            'Change color',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: BaseStyles.blackMedium14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'UID-1',
                                      style: BaseStyles.grey3medium12,
                                    ),
                                  ],
                                ),
                                heightSpace10,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 30,
                                      decoration: decorationbox(
                                        radius: 5.0,
                                        color: Color(0xffEDEDED),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.sync_lock_rounded,
                                                  size: 14,
                                                  color: AppColors.greycolor1,
                                                ),
                                                widthSpace10,
                                                Text(
                                                  '0/2 Subtasks',
                                                  style:
                                                      BaseStyles.grey2normal12,
                                                )
                                              ],
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                size: 14,
                                                color: AppColors.greycolor1,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_today_rounded,
                                          color: AppColors.greyprimarycolor,
                                          size: 16,
                                        ),
                                        widthSpace5,
                                        Row(
                                          children: [
                                            Text(
                                              'Due on ',
                                              style: BaseStyles.grey3Normal12,
                                            ),
                                            Text(
                                              'Oct 10, 2022',
                                              style: BaseStyles.grey3medium12,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
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
    );
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
