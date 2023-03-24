import 'package:Talbotiq/app/modules/task_screens/views/member_view.dart';
import 'package:Talbotiq/app/modules/task_screens/views/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:readmore/readmore.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/decoration.dart';
import '../../../widgets/filters.dart';
import '../../../widgets/jobdetailwidget.dart';
import '../../../widgets/textfiled.dart';
import '../controllers/taskdetail_controller.dart';

class TaskdetailView extends GetView<TaskdetailController> {
  const TaskdetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => TaskdetailController());
    return Scaffold(
      appBar: myappbar2(
          title: HomeName.TaskDetails,
          show: true,
          show2: Container(),
          ontab2: () {
            jobedit(
              ontab: (value) {
                switch (value) {
                  case 0:
                    Get.back();
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
                                padding: const EdgeInsets.all(10.0),
                                child: SingleChildScrollView(
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
                                        child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.blue,
                                          child: Text(
                                            'R',
                                            style: BaseStyles.whitebold12,
                                          ),
                                        ),
                                      ),
                                      heightSpace5,
                                      Align(
                                        child: Text(
                                          'Rajeev Malhotra',
                                          style: BaseStyles.blackMedium14,
                                        ),
                                      ),
                                      heightSpace10,
                                      Divider(
                                        thickness: 0.5,
                                      ),
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                                    style: BaseStyles
                                                        .grey3Normal12,
                                                  )
                                                ],
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                width: 70,
                                                decoration: decorationbox(
                                                  radius: 30.0,
                                                  color: AppColors.whiteColor,
                                                  border: Border.all(
                                                      color: Color(0xffE0E0E0)),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Select',
                                                        style: BaseStyles
                                                            .grey3Normal14,
                                                      ),
                                                      Icon(
                                                        Icons.arrow_drop_down,
                                                        size: 16,
                                                        color: AppColors
                                                            .greycolor3,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          heightSpace5,
                                          addsettings(
                                              context: context,
                                              icon: Icons.low_priority_outlined,
                                              title: 'Priority',
                                              widget: Container()),
                                          heightSpace5,
                                          Divider(
                                            thickness: 0.5,
                                          ),
                                          heightSpace5,
                                          addsettings(
                                            // ontab: () => Get.to(MemberView()),
                                            context: context,
                                            icon: Icons.group_outlined,
                                            title: 'Assign Members',
                                          ),
                                          heightSpace5,
                                          Divider(
                                            thickness: 0.5,
                                          ),
                                          heightSpace5,
                                          addsettings(
                                            widget: Container(
                                              alignment: Alignment.center,
                                              width: 70,
                                              decoration: decorationbox(
                                                radius: 30.0,
                                                color: AppColors.whiteColor,
                                                border: Border.all(
                                                    color: Color(0xffE0E0E0)),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Select',
                                                      style: BaseStyles
                                                          .grey3Normal14,
                                                    ),
                                                    Icon(
                                                      Icons.arrow_drop_down,
                                                      size: 16,
                                                      color:
                                                          AppColors.greycolor3,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            show: Container(),
                                            // ontab: () => Get.to(MemberView()),
                                            context: context,
                                            icon: Icons.location_on_outlined,
                                            title: 'Timezone',
                                          ),
                                          heightSpace5,
                                          Divider(
                                            thickness: 0.5,
                                          ),
                                          heightSpace5,
                                          addsettings(
                                            widget: Container(
                                              alignment: Alignment.center,
                                              width: 70,
                                              decoration: decorationbox(
                                                radius: 30.0,
                                                color: AppColors.whiteColor,
                                                border: Border.all(
                                                    color: Color(0xffE0E0E0)),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Select',
                                                      style: BaseStyles
                                                          .grey3Normal14,
                                                    ),
                                                    Icon(
                                                      Icons.arrow_drop_down,
                                                      size: 16,
                                                      color:
                                                          AppColors.greycolor3,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            show: Container(),
                                            // ontab: () => Get.to(MemberView()),
                                            context: context,
                                            icon: Icons.calendar_today,
                                            title: 'Start Date',
                                          ),
                                          heightSpace10,
                                          addsettings(
                                            widget: Container(
                                              alignment: Alignment.center,
                                              width: 70,
                                              decoration: decorationbox(
                                                radius: 30.0,
                                                color: AppColors.whiteColor,
                                                border: Border.all(
                                                    color: Color(0xffE0E0E0)),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(4.0),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Select',
                                                      style: BaseStyles
                                                          .grey3Normal14,
                                                    ),
                                                    Icon(
                                                      Icons.arrow_drop_down,
                                                      size: 16,
                                                      color:
                                                          AppColors.greycolor3,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            show: Container(),
                                            // ontab: () => Get.to(MemberView()),
                                            context: context,
                                            icon: Icons.calendar_today,
                                            title: 'Due Date',
                                          ),
                                          heightSpace5,
                                          Divider(
                                            thickness: 0.5,
                                          ),
                                          heightSpace5,
                                          addsettings(
                                            context: context,
                                            icon: Icons.double_arrow,
                                            title: 'Labels',
                                          ),
                                          heightSpace5,
                                          Row(
                                            children: [
                                              widthSpace10,
                                              Container(
                                                  decoration: decorationbox(
                                                      radius: 30.0,
                                                      color: Colors.red),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Row(
                                                      children: [
                                                        widthSpace5,
                                                        Text(
                                                          'Followup',
                                                          style: BaseStyles
                                                              .whitenormal14,
                                                        ),
                                                        widthSpace3,
                                                        Icon(
                                                          Icons.close,
                                                          size: 16,
                                                          color: AppColors
                                                              .whiteColor,
                                                        ),
                                                        widthSpace5
                                                      ],
                                                    ),
                                                  )),
                                              widthSpace10,
                                              Container(
                                                  decoration: decorationbox(
                                                      radius: 30.0,
                                                      color: Colors.blue),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Row(
                                                      children: [
                                                        widthSpace5,
                                                        Text(
                                                          'Important',
                                                          style: BaseStyles
                                                              .whitenormal14,
                                                        ),
                                                        widthSpace3,
                                                        Icon(
                                                          Icons.close,
                                                          size: 16,
                                                          color: AppColors
                                                              .whiteColor,
                                                        ),
                                                        widthSpace5
                                                      ],
                                                    ),
                                                  )),
                                            ],
                                          ),
                                          heightSpace5,
                                          Divider(
                                            thickness: 0.5,
                                          ),
                                          heightSpace5,
                                          addsettings(
                                            ontab: () {
                                              showModalBottomSheet(
                                                  isDismissible: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  isScrollControlled: true,
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                      top:
                                                          Radius.circular(25.0),
                                                    ),
                                                  ),
                                                  builder: (context) {
                                                    return FractionallySizedBox(
                                                      heightFactor: 0.35,
                                                      child: Container(
                                                        // height: 300,
                                                        decoration: MyDecoration
                                                            .radiusonlydecoration(
                                                                tlradius: 25.0,
                                                                trradius: 25.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              heightSpace20,
                                                              Align(
                                                                child:
                                                                    Container(
                                                                  height: 4,
                                                                  width: 160,
                                                                  decoration: MyDecoration
                                                                      .simpledecoration(
                                                                          color:
                                                                              AppColors.greyprimarycolor),
                                                                ),
                                                              ),
                                                              heightSpace20,
                                                              Align(
                                                                child: Text(
                                                                  'Add Reminder',
                                                                  style: BaseStyles
                                                                      .blackMedium16,
                                                                ),
                                                              ),
                                                              heightSpace20,
                                                              Row(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Obx(
                                                                        () =>
                                                                            SizedBox(
                                                                          height:
                                                                              25,
                                                                          width:
                                                                              25,
                                                                          child:
                                                                              Radio(
                                                                            activeColor:
                                                                                AppColors.primaryColor,
                                                                            visualDensity:
                                                                                const VisualDensity(horizontal: -0.4, vertical: -0.4),
                                                                            value:
                                                                                0,
                                                                            groupValue:
                                                                                controller.onday.value,
                                                                            onChanged:
                                                                                (value) {
                                                                              controller.onday.value = 0;
                                                                              // if (controller
                                                                              //         .selected
                                                                              //         .value ==
                                                                              //     index) {
                                                                              //   controller
                                                                              //           .selectaddressdata =
                                                                              //       data;
                                                                              //   showToast('Selected');
                                                                              //   // controller.box.write('addresstype',
                                                                              //   //     controller.selectaddressdata!.type);
                                                                              //   print(controller
                                                                              //       .selectaddressdata);
                                                                              // } else {
                                                                              //   // controller.selectaddressdata;
                                                                              // }
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      widthSpace5,
                                                                      Text(
                                                                        'Day',
                                                                        style: BaseStyles
                                                                            .blacNormal14,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  widthSpace10,
                                                                  Row(
                                                                    children: [
                                                                      Obx(
                                                                        () =>
                                                                            SizedBox(
                                                                          height:
                                                                              25,
                                                                          width:
                                                                              25,
                                                                          child:
                                                                              Radio(
                                                                            activeColor:
                                                                                AppColors.primaryColor,
                                                                            visualDensity:
                                                                                const VisualDensity(horizontal: -0.4, vertical: -0.4),
                                                                            value:
                                                                                1,
                                                                            groupValue:
                                                                                controller.onday.value,
                                                                            onChanged:
                                                                                (value) {
                                                                              controller.onday.value = 1;
                                                                              // if (controller
                                                                              //         .selected
                                                                              //         .value ==
                                                                              //     index) {
                                                                              //   controller
                                                                              //           .selectaddressdata =
                                                                              //       data;
                                                                              //   showToast('Selected');
                                                                              //   // controller.box.write('addresstype',
                                                                              //   //     controller.selectaddressdata!.type);
                                                                              //   print(controller
                                                                              //       .selectaddressdata);
                                                                              // } else {
                                                                              //   // controller.selectaddressdata;
                                                                              // }
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      widthSpace5,
                                                                      Text(
                                                                        'Hour',
                                                                        style: BaseStyles
                                                                            .blacNormal14,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              Obx(() => Row(
                                                                    children: [
                                                                      Expanded(
                                                                        child: textwidget2(
                                                                            icon: Icons
                                                                                .keyboard_arrow_down,
                                                                            width: Get.width *
                                                                                0.45,
                                                                            name:
                                                                                '',
                                                                            text: controller.onday.value == 0
                                                                                ? 'Select Day'
                                                                                : 'Select Hour'),
                                                                      ),
                                                                      Expanded(
                                                                        child: textwidget2(
                                                                            icon: Icons
                                                                                .keyboard_arrow_down,
                                                                            width: Get.width *
                                                                                0.45,
                                                                            name:
                                                                                '',
                                                                            text: controller.onday.value == 0
                                                                                ? 'Before at'
                                                                                : 'Select Minutes'),
                                                                      )
                                                                    ],
                                                                  )),
                                                              Expanded(
                                                                  child:
                                                                      Container()),
                                                              mybuttons(
                                                                  action: () {
                                                                    Get.back();
                                                                  },
                                                                  // style:
                                                                  //     BaseStyles.grey2medium16,
                                                                  name: 'Add',
                                                                  color: AppColors
                                                                      .orangecolor,
                                                                  height: 45.0)
                                                              // heightSpace10,
                                                              // const Divider(
                                                              //   thickness: 0.3,
                                                              //   height: 25,
                                                              // ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  });
                                            },
                                            context: context,
                                            icon: Icons
                                                .notifications_none_outlined,
                                            title: 'Remind on',
                                          ),
                                          heightSpace5,
                                          Row(
                                            children: [
                                              widthSpace10,
                                              Container(
                                                  decoration: decorationbox(
                                                      radius: 30.0,
                                                      color: AppColors
                                                          .primaryColor
                                                          .withOpacity(0.1)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Row(
                                                      children: [
                                                        widthSpace5,
                                                        Text(
                                                          '5Hrs & 30m',
                                                          style: BaseStyles
                                                              .greennormal14,
                                                        ),
                                                        widthSpace3,
                                                        Icon(
                                                          Icons.close,
                                                          size: 16,
                                                          color: AppColors
                                                              .greycolor3,
                                                        ),
                                                        widthSpace5
                                                      ],
                                                    ),
                                                  )),
                                              widthSpace10,
                                              Container(
                                                  decoration: decorationbox(
                                                      radius: 30.0,
                                                      color: AppColors
                                                          .primaryColor
                                                          .withOpacity(0.1)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Row(
                                                      children: [
                                                        widthSpace5,
                                                        Text(
                                                          '5Hrs & 30m',
                                                          style: BaseStyles
                                                              .greennormal14,
                                                        ),
                                                        widthSpace3,
                                                        Icon(
                                                          Icons.close,
                                                          size: 16,
                                                          color: AppColors
                                                              .greycolor3,
                                                        ),
                                                        widthSpace5
                                                      ],
                                                    ),
                                                  )),
                                            ],
                                          ),
                                          heightSpace5,
                                          Divider(
                                            thickness: 0.5,
                                          ),
                                          heightSpace5,
                                          addsettings(
                                            ontab: () {
                                              Get.back();
                                              showModalBottomSheet(
                                                  isDismissible: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  isScrollControlled: true,
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.vertical(
                                                      top:
                                                          Radius.circular(25.0),
                                                    ),
                                                  ),
                                                  builder: (context) {
                                                    return FractionallySizedBox(
                                                      heightFactor: 0.35,
                                                      child: Container(
                                                        // height: 300,
                                                        decoration: MyDecoration
                                                            .radiusonlydecoration(
                                                                tlradius: 25.0,
                                                                trradius: 25.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(10.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              heightSpace20,
                                                              Align(
                                                                child:
                                                                    Container(
                                                                  height: 4,
                                                                  width: 160,
                                                                  decoration: MyDecoration
                                                                      .simpledecoration(
                                                                          color:
                                                                              AppColors.greyprimarycolor),
                                                                ),
                                                              ),
                                                              heightSpace20,
                                                              Align(
                                                                child: Text(
                                                                  'Repeat',
                                                                  style: BaseStyles
                                                                      .blackMedium14,
                                                                ),
                                                              ),
                                                              heightSpace10,
                                                              textwidget2(
                                                                  onTap: () {
                                                                    Get.back();
                                                                    showModalBottomSheet(
                                                                        isDismissible:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors
                                                                                .transparent,
                                                                        context:
                                                                            context,
                                                                        isScrollControlled:
                                                                            true,
                                                                        shape:
                                                                            const RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.vertical(
                                                                            top:
                                                                                Radius.circular(25.0),
                                                                          ),
                                                                        ),
                                                                        builder:
                                                                            (context) {
                                                                          return FractionallySizedBox(
                                                                            heightFactor:
                                                                                0.4,
                                                                            child:
                                                                                Container(
                                                                              // height: 300,
                                                                              decoration: MyDecoration.radiusonlydecoration(tlradius: 25.0, trradius: 25.0),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(10.0),
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    heightSpace20,
                                                                                    Align(
                                                                                      child: Container(
                                                                                        height: 4,
                                                                                        width: 160,
                                                                                        decoration: MyDecoration.simpledecoration(color: AppColors.greyprimarycolor),
                                                                                      ),
                                                                                    ),
                                                                                    heightSpace20,
                                                                                    ListView.builder(
                                                                                        physics: NeverScrollableScrollPhysics(),
                                                                                        shrinkWrap: true,
                                                                                        itemCount: controller.repeatlist.length,
                                                                                        itemBuilder: (BuildContext context, int index) {
                                                                                          return Padding(
                                                                                            padding: const EdgeInsets.only(left: 10.0),
                                                                                            child: Column(
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                InkWell(
                                                                                                  onTap: () {
                                                                                                    Get.back();
                                                                                                    if (index == 1 || index == 2 || index == 3 || index == 4) {
                                                                                                      repeat(context, index);
                                                                                                    }
                                                                                                  },
                                                                                                  child: Text(
                                                                                                    controller.repeatlist[index],
                                                                                                    style: BaseStyles.grey1normal14,
                                                                                                  ),
                                                                                                ),
                                                                                                heightSpace20,
                                                                                              ],
                                                                                            ),
                                                                                          );
                                                                                        }),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        });
                                                                  },
                                                                  name:
                                                                      'Repeat',
                                                                  text:
                                                                      'Do not Repeat'),
                                                              heightSpace20,
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Work on Weekend ?',
                                                                    style: BaseStyles
                                                                        .grey1Medium14,
                                                                  ),
                                                                  // widthSpace10,
                                                                  FlutterSwitch(
                                                                    width: 35.0,
                                                                    height:
                                                                        18.0,
                                                                    toggleSize:
                                                                        16.0,
                                                                    value: true,
                                                                    borderRadius:
                                                                        30.0,
                                                                    padding:
                                                                        2.0,
                                                                    toggleColor:
                                                                        AppColors
                                                                            .whiteColor,
                                                                    activeColor:
                                                                        AppColors
                                                                            .primaryColor,
                                                                    inactiveColor:
                                                                        AppColors
                                                                            .greyprimarycolor
                                                                            .shade200,
                                                                    onToggle:
                                                                        (val) {},
                                                                  ),
                                                                ],
                                                              ),
                                                              Expanded(
                                                                  child:
                                                                      Container()),
                                                              mybuttons(
                                                                  action: () {
                                                                    Get.back();
                                                                  },
                                                                  // style:
                                                                  //     BaseStyles.grey2medium16,
                                                                  name: 'Add',
                                                                  color: AppColors
                                                                      .orangecolor,
                                                                  height: 45.0)
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  });
                                            },
                                            context: context,
                                            icon: Icons
                                                .notifications_none_outlined,
                                            title: 'Repeat',
                                          ),
                                          heightSpace5,
                                          Row(
                                            children: [
                                              widthSpace10,
                                              Container(
                                                  decoration: decorationbox(
                                                      radius: 30.0,
                                                      color: AppColors
                                                          .primaryColor
                                                          .withOpacity(0.1)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Row(
                                                      children: [
                                                        widthSpace5,
                                                        Text(
                                                          'Daily',
                                                          style: BaseStyles
                                                              .greennormal14,
                                                        ),
                                                        widthSpace3,
                                                        Icon(
                                                          Icons.close,
                                                          size: 16,
                                                          color: AppColors
                                                              .greycolor3,
                                                        ),
                                                        widthSpace5
                                                      ],
                                                    ),
                                                  )),
                                              widthSpace10,
                                            ],
                                          ),
                                        ],
                                      ),
                                      heightSpace10,
                                      // Expanded(child: Container()),
                                      mybuttons(
                                          // style:
                                          //     BaseStyles.grey2medium16,
                                          name: 'Save',
                                          color: AppColors.orangecolor,
                                          height: 45.0)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        });

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
          }),
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
        ],
      ),
    );
  }

  addsettings({icon, title, widget, show, context, ontab}) {
    return Container(
      width: Get.width * 0.94,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          // w,
          Row(
            children: [
              widget ?? Container(),
              // widthSpace10,
              show ??
                  InkWell(
                    onTap: ontab ??
                        () {
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
                            color: AppColors.orangecolor,
                          )),
                    ),
                  ),
            ],
          ),
        ],
      ),
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
                                      InkWell(
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
                            InkWell(
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
                  InkWell(
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
                      InkWell(
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

///////// repeat skills////////////////////////////////
  repeat(context, index) {
    return showModalBottomSheet(
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
            heightFactor: index == 2
                ? 0.6
                : index == 1 || index == 3
                    ? 0.73
                    : 0.75,
            child: Container(
              // height: 300,
              decoration: MyDecoration.radiusonlydecoration(
                  tlradius: 25.0, trradius: 25.0),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    heightSpace20,
                    Align(
                      child: Container(
                        height: 4,
                        width: 160,
                        decoration: MyDecoration.simpledecoration(
                            color: AppColors.greyprimarycolor),
                      ),
                    ),
                    heightSpace20,
                    Align(
                      child: Text(
                        'Repeat',
                        style: BaseStyles.blackMedium14,
                      ),
                    ),
                    heightSpace10,
                    textwidget2(name: 'Repeat', text: 'Do not Repeat'),
                    Column(
                      children: [
                        heightSpace10,
                        Row(
                          children: [
                            Expanded(
                              child: textwidget2(
                                  icon: Icons.calendar_today,
                                  width: Get.width * 0.45,
                                  name: 'Start Date *',
                                  text: 'Select'),
                            ),
                            Expanded(
                              child: textwidget2(
                                  icon: Icons.calendar_today,
                                  width: Get.width * 0.45,
                                  name: 'End Date *',
                                  text: 'Select'),
                            )
                          ],
                        ),
                        heightSpace10,
                        textwidget2(
                            iconwidget: Row(
                              children: [
                                Text(
                                  index == 2
                                      ? 'Day'
                                      : index == 4
                                          ? 'Month'
                                          : 'Week',
                                  style: BaseStyles.grey3normal16,
                                ),
                                widthSpace3,
                                Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: AppColors.greyprimarycolor,
                                  size: 20,
                                ),
                              ],
                            ),
                            name: 'Repeat Every',
                            text: '1'),
                      ],
                    ),
                    heightSpace10,
                    heightSpace5,
                    index == 1 || index == 3
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                                controller.days.length,
                                (index) => CircleAvatar(
                                      radius: 15,
                                      backgroundColor: index != 0 && index != 6
                                          ? AppColors.primaryColor
                                          : AppColors.greyprimarycolor.shade100,
                                      child: Text(
                                        controller.days[index],
                                        style: index != 0 && index != 6
                                            ? BaseStyles.whitemedium14
                                            : BaseStyles.lightblackMedium14,
                                      ),
                                    )),
                          )
                        : Container(),
                    index == 4
                        ? Row(
                            children: [
                              Row(
                                children: [
                                  Obx(
                                    () => SizedBox(
                                      height: 25,
                                      width: 25,
                                      child: Radio(
                                        activeColor: AppColors.primaryColor,
                                        visualDensity: const VisualDensity(
                                            horizontal: -0.4, vertical: -0.4),
                                        value: 0,
                                        groupValue: controller.onday.value,
                                        onChanged: (value) {
                                          controller.onday.value = 0;
                                          // if (controller
                                          //         .selected
                                          //         .value ==
                                          //     index) {
                                          //   controller
                                          //           .selectaddressdata =
                                          //       data;
                                          //   showToast('Selected');
                                          //   // controller.box.write('addresstype',
                                          //   //     controller.selectaddressdata!.type);
                                          //   print(controller
                                          //       .selectaddressdata);
                                          // } else {
                                          //   // controller.selectaddressdata;
                                          // }
                                        },
                                      ),
                                    ),
                                  ),
                                  widthSpace5,
                                  Text(
                                    'On Day',
                                    style: BaseStyles.blacNormal14,
                                  ),
                                ],
                              ),
                              widthSpace10,
                              Row(
                                children: [
                                  Obx(
                                    () => SizedBox(
                                      height: 25,
                                      width: 25,
                                      child: Radio(
                                        activeColor: AppColors.primaryColor,
                                        visualDensity: const VisualDensity(
                                            horizontal: -0.4, vertical: -0.4),
                                        value: 1,
                                        groupValue: controller.onday.value,
                                        onChanged: (value) {
                                          controller.onday.value = 1;
                                          // if (controller
                                          //         .selected
                                          //         .value ==
                                          //     index) {
                                          //   controller
                                          //           .selectaddressdata =
                                          //       data;
                                          //   showToast('Selected');
                                          //   // controller.box.write('addresstype',
                                          //   //     controller.selectaddressdata!.type);
                                          //   print(controller
                                          //       .selectaddressdata);
                                          // } else {
                                          //   // controller.selectaddressdata;
                                          // }
                                        },
                                      ),
                                    ),
                                  ),
                                  widthSpace5,
                                  Text(
                                    'On The',
                                    style: BaseStyles.blacNormal14,
                                  ),
                                ],
                              ),
                            ],
                          )
                        : Container(),
                    // heightSpace10,
                    index == 4
                        ? Obx(() => controller.onday.value == 0
                            ? textwidget(name: '', text: '')
                            : Row(
                                children: [
                                  Expanded(
                                    child: textwidget2(
                                        icon: Icons.keyboard_arrow_down,
                                        width: Get.width * 0.45,
                                        name: '',
                                        text: 'Third'),
                                  ),
                                  Expanded(
                                    child: textwidget2(
                                        icon: Icons.keyboard_arrow_down,
                                        width: Get.width * 0.45,
                                        name: '',
                                        text: 'Tuesday'),
                                  )
                                ],
                              ))
                        : Container(),
                    heightSpace10,
                    Text(
                      index == 4
                          ? 'Occurs every month on day 17'
                          : 'Occurs every 1 day',
                      style: BaseStyles.grey3Normal12,
                    ),
                    heightSpace3,
                    index == 1 || index == 3
                        ? Text(
                            'Monday, Tuesday, Wednesday, Thursday and Friday',
                            style: BaseStyles.grey3Normal12,
                          )
                        : Container(),
                    heightSpace20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Work on Weekend ?',
                          style: BaseStyles.grey1Medium14,
                        ),
                        // widthSpace10,
                        FlutterSwitch(
                          width: 35.0,
                          height: 18.0,
                          toggleSize: 16.0,
                          value: true,
                          borderRadius: 30.0,
                          padding: 2.0,
                          toggleColor: AppColors.whiteColor,
                          activeColor: AppColors.primaryColor,
                          inactiveColor: AppColors.greyprimarycolor.shade200,
                          onToggle: (val) {},
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    mybuttons(
                        action: () {
                          Get.back();
                        },
                        // style:
                        //     BaseStyles.grey2medium16,
                        name: 'Add',
                        color: AppColors.orangecolor,
                        height: 45.0)
                  ],
                ),
              ),
            ),
          );
        });
  }
}
