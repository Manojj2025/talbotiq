import 'package:Talbotiq/app/modules/task_screens/views/member_view.dart';
import 'package:Talbotiq/app/modules/task_screens/views/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:readmore/readmore.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/decoration.dart';
import '../../../widgets/filters.dart';
import '../controllers/taskdetail_controller.dart';

class TaskdetailView extends GetView<TaskdetailController> {
  const TaskdetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => TaskdetailController());
    return Scaffold(
      appBar: myappbar2(
          title: HomeName.TaskDetails, show: true, show2: Container()),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(10.0),
              color: AppColors.whiteColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        color: Color(0xffF4FAF8),
                        height: 30,
                        child: Row(
                          children: [
                            Text(
                              'UI/UX Team',
                              style: BaseStyles.grey2normal10,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: AppColors.greycolor3,
                              size: 16,
                            ),
                            Text(
                              'Todo',
                              style: BaseStyles.grey2normal10,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: AppColors.greycolor3,
                              size: 16,
                            ),
                            Text(
                              'UID-1 Main ...',
                              style: BaseStyles.grey2normal10,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/image/arrow.png',
                        height: 30,
                      )
                    ],
                  ),
                  heightSpace20,
                  Row(
                    children: [
                      Container(
                        decoration: decorationbox(
                            radius: 5.0, color: AppColors.yellowcolor),
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
                      Text(
                        'Main task name goes here',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: BaseStyles.blackMedium16,
                      ),
                    ],
                  ),
                ]),
              )),
          heightSpace10,
          _name(),
          heightSpace10,
          jobDescription(),
          heightSpace10,
          _SubtaskWidget(),
          heightSpace10,
          _ChecklistsWidget(),
          heightSpace10,
          _attechmentWidget(),
          heightSpace10,
          _setingsWidget(context)
        ],
      ),
    );
  }

  //////////////////// _setingsWidget list widget ui////////////////////////////////
  _setingsWidget(context) {
    return Container(
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.settings,
                  color: AppColors.greycolor3,
                  size: 12,
                ),
                widthSpace5,
                Text(
                  'Settings',
                  style: BaseStyles.blackMedium14,
                ),
              ],
            ),
            heightSpace10,
            Divider(
              thickness: 0.5,
            ),
            heightSpace10,
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: Get.width * 0.50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.task_outlined,
                            size: 14,
                            color: AppColors.greycolor3,
                          ),
                          widthSpace5,
                          Text(
                            'Select Task Type',
                            style: BaseStyles.grey3Normal12,
                          )
                        ],
                      ),
                      heightSpace10,
                      Container(
                        alignment: Alignment.center,
                        width: 70,
                        decoration: decorationbox(
                          radius: 30.0,
                          color: AppColors.whiteColor,
                          border: Border.all(color: Color(0xffE0E0E0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Select',
                                style: BaseStyles.grey3Normal14,
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 16,
                                color: AppColors.greycolor3,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                addsettings(
                    context: context,
                    show: Container(),
                    icon: Icons.person_outlined,
                    title: 'Reporter',
                    widget: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColors.bluecolor,
                            child: Text(
                              'A',
                              style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp),
                            ),
                          ),
                          widthSpace5,
                          Text(
                            'Rajeev Malhotra',
                            style: BaseStyles.blacNormal12,
                          )
                        ],
                      ),
                    )),
              ],
            ),
            heightSpace10,
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: Get.width * 0.50,
                  child: addsettings(
                    ontab: () => Get.to(MemberView()),
                    context: context,
                    icon: Icons.group_outlined,
                    title: 'Assign Members',
                  ),
                ),
                addsettings(
                    context: context,
                    icon: Icons.double_arrow,
                    title: 'Labels',
                    widget: Container(
                      decoration:
                          decorationbox(radius: 30.0, color: Colors.red),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            widthSpace5,
                            Text(
                              'Followup',
                              style: BaseStyles.whitenormal14,
                            ),
                            widthSpace3,
                            Icon(
                              Icons.close,
                              size: 16,
                              color: AppColors.whiteColor,
                            ),
                            widthSpace5
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            heightSpace10,
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: Get.width * 0.50,
                  child: addsettings(
                      context: context,
                      icon: Icons.calendar_today,
                      title: 'Start Date',
                      widget: Container()),
                ),
                // widthSpace50,
                addsettings(
                    context: context,
                    icon: Icons.calendar_today,
                    title: 'Due Date',
                    widget: Container())
              ],
            ),
            heightSpace10,
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: Get.width * 0.50,
                  child: addsettings(
                      context: context,
                      icon: Icons.notifications_none,
                      title: 'Remind on',
                      widget: Container()),
                ),
                addsettings(
                    context: context,
                    icon: Icons.low_priority_outlined,
                    title: 'Priority',
                    widget: Container())
              ],
            )
          ],
        ),
      ),
    );
  }

  Column addsettings({icon, title, widget, show, context, ontab}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 14,
              color: AppColors.greycolor3,
            ),
            widthSpace5,
            Text(
              title,
              style: BaseStyles.grey3Normal12,
            )
          ],
        ),
        heightSpace10,
        Row(
          children: [
            widget ?? Container(),
            widthSpace10,
            show ??
                GestureDetector(
                  onTap: ontab ??
                      () {
                        jobedit(
                          ontab: (value) {
                            switch (value) {
                              case 0:
                                Get.back();
                                Get.to(SettingView());

                                break;
                              default:
                            }
                          },
                          height: 0.20,
                          context: context,
                          controller: controller,
                          listname: controller.editlist,
                          icon: controller.editlist,
                        );
                        // Get.to(SettingView());
                      },
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Color(0xffE0E0E0),
                    child: CircleAvatar(
                        radius: 11,
                        backgroundColor: AppColors.whiteColor,
                        child: Icon(
                          Icons.add,
                          size: 15,
                          color: AppColors.greycolor3,
                        )),
                  ),
                ),
          ],
        ),
      ],
    );
  }

  //////////////////// _attechmentWidget list widget ui////////////////////////////////
  _attechmentWidget() {
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
                    Image.asset(
                      'assets/image/attchment.png',
                      height: 12,
                    ),
                    widthSpace5,
                    Text(
                      'Attachments',
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
                    widthSpace3,
                    // widthSpace20,
                    Text(
                      'Add',
                      style: BaseStyles.orangeMedium14,
                    ),
                    widthSpace10,
                  ],
                ),
              ],
            ),
            heightSpace10,
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        thickness: 0.5,
                      ),
                      heightSpace10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: decorationbox(
                                  radius: 5.0,
                                  color: AppColors.greyprimarycolor.shade300,
                                ),
                              ),
                              widthSpace10,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mediafilename.pdf',
                                    style: BaseStyles.blackMedium14,
                                  ),
                                  Text(
                                    '3.4 MB',
                                    style: BaseStyles.grey3Normal12,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
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
                        ],
                      ),
                      heightSpace10
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }

  //////////////////// _checkWidget list widget ui////////////////////////////////
  _ChecklistsWidget() {
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
                    Image.asset(
                      'assets/image/checklist.png',
                      height: 12,
                    ),
                    widthSpace5,
                    Text(
                      'Checklists (3)',
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
                    widthSpace3,
                    // widthSpace20,
                    Text(
                      'Add',
                      style: BaseStyles.orangeMedium14,
                    ),
                    widthSpace10,
                  ],
                ),
              ],
            ),
            heightSpace20,
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

                backgroundColor: AppColors.greyprimarycolor.shade200,
                progressColor: AppColors.primaryColor),
            heightSpace20,
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        thickness: 0.5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                index == 0
                                    ? Icons.check_circle
                                    : Icons.circle_outlined,
                                color: index == 0
                                    ? AppColors.primaryColor
                                    : AppColors.greycolor3,
                                size: 20,
                              ),
                              widthSpace5,
                              Text(
                                'Checklist ${index + 1}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: BaseStyles.blacNormal14,
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
                      heightSpace10
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }

  //////////////////// _SubtaskWidget list widget ui////////////////////////////////
  _SubtaskWidget() {
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
                    Image.asset(
                      'assets/image/subtask.png',
                      height: 12,
                    ),
                    widthSpace5,
                    Text(
                      'Subtasks (3)',
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
                    widthSpace3,
                    // widthSpace20,
                    Text(
                      'Add',
                      style: BaseStyles.orangeMedium14,
                    ),
                    widthSpace10,
                  ],
                ),
              ],
            ),
            heightSpace20,
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

                backgroundColor: AppColors.greyprimarycolor.shade200,
                progressColor: AppColors.primaryColor),
            heightSpace20,
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: decorationbox(
                                    radius: 5.0, color: AppColors.yellowcolor),
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
                              Text(
                                'Subtask 1',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: BaseStyles.blacNormal14,
                              ),
                            ],
                          ),
                          Row(
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
                                            style: BaseStyles.grey2normal12,
                                          )
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          size: 14,
                                          color: AppColors.greycolor1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              widthSpace10,
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Color(0xffFFEAD7),
                                child: Text(
                                  'A',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 0.5,
                      ),
                      heightSpace10
                    ],
                  );
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: decorationbox(
                          radius: 5.0, color: AppColors.yellowcolor),
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
                    Text(
                      'Subtask 1',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: BaseStyles.blacNormal14,
                    ),
                  ],
                ),
                Row(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  style: BaseStyles.grey2normal12,
                                )
                              ],
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                size: 14,
                                color: AppColors.greycolor1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    widthSpace10,
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Color(0xffE0E0E0),
                      child: CircleAvatar(
                          radius: 14,
                          backgroundColor: AppColors.whiteColor,
                          child: Icon(
                            Icons.person_add_alt_outlined,
                            size: 16,
                            color: AppColors.greycolor3,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
/////////job description////////////////////////////////////////////////////////////////

  Widget jobDescription() {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Description',
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
              heightSpace10,
              Divider(
                thickness: 0.5,
              ),
              heightSpace5,
              ReadMoreText(
                "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual...",
                trimLines: 2,
                style: BaseStyles.blacNormal14,
                colorClickableText: AppColors.primaryColor,
                trimMode: TrimMode.Line,
                trimCollapsedText: '...Show more',
                trimExpandedText: ' show less',
              ),
            ],
          ),
        ));
  }
///////// professional skills////////////////////////////////

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
                              "${controller.list[index]['name'].toString()}",
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
}
