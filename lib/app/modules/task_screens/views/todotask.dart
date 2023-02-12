import 'package:Talbotiq/app/modules/task_screens/views/taskdetail_view.dart';
import 'package:Talbotiq/app/widgets/decoration.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constants/values.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/textfiled.dart';

class TodoTask extends StatefulWidget {
  // final String name;
  TodoTask({
    super.key,
  });

  @override
  State<TodoTask> createState() => _TodoTaskState();
}

class _TodoTaskState extends State<TodoTask> {
  List<bool> show = [false, false];
  List name = ['Todo', 'In Progress'];
  List color = [Colors.blue, Colors.orange];
  List allcolor = [
    Colors.grey,
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.purple
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: name.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: Get.width * 0.95,
                    decoration: MyDecoration.radiusonlydecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.2,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 0), // changes position of shadow
                      ),
                    ], tlradius: 10.0, trradius: 10.0, color: color[index]),
                    child: Container(
                      margin: EdgeInsets.only(top: 4),
                      width: Get.width,
                      decoration: MyDecoration.radiusonlydecoration(
                        tlradius: 10.0,
                        trradius: 10.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              widthSpace20,
                              Text(
                                name[index],
                                style: BaseStyles.blacNormal14,
                              ),
                              widthSpace10,
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Color(0xffE0E0E0),
                                child: CircleAvatar(
                                    radius: 9,
                                    backgroundColor: AppColors.whiteColor,
                                    child: Text(
                                      '5',
                                      style: BaseStyles.grey3Normal12,
                                    )),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.more_vert_outlined,
                              color: AppColors.greyprimarycolor,
                              size: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  heightSpace10,
                  show[index] == false
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.to(TaskdetailView());
                                  },
                                  child: Container(
                                    height: 180,
                                    width: Get.width * 0.95,
                                    decoration: MyDecoration.simple2decoration(
                                        boxshadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 0.2,
                                            blurRadius: 3,
                                            offset: const Offset(0,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                        radius: 5.0,
                                        color: AppColors.whiteColor),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                        color: AppColors
                                                            .yellowcolor),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              3.0),
                                                      child: Icon(
                                                        Icons
                                                            .remove_red_eye_outlined,
                                                        color: AppColors
                                                            .whiteColor,
                                                        size: 14,
                                                      ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_drop_down,
                                                    size: 20,
                                                    color: AppColors.greycolor3,
                                                  ),
                                                  widthSpace10,
                                                  SizedBox(
                                                    width: Get.width * 0.50,
                                                    child: Text(
                                                      'Main task name goes h...',
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: BaseStyles
                                                          .blackMedium14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                'UID-1',
                                                style: BaseStyles.grey3medium12,
                                              )
                                            ],
                                          ),
                                          heightSpace10,
                                          CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Color(0xffE1F8FF),
                                            child: Text(
                                              'R',
                                              style: TextStyle(
                                                  color: Color(0xff56CCF2),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12.sp),
                                            ),
                                          ),
                                          heightSpace10,
                                          Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20,
                                                    vertical: 3),
                                                decoration: decorationbox(
                                                    radius: 30.0,
                                                    color: Colors.red),
                                                child: Text(
                                                  'Followup',
                                                  style:
                                                      BaseStyles.whitenormal12,
                                                ),
                                              ),
                                              widthSpace5,
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20,
                                                    vertical: 3),
                                                decoration: decorationbox(
                                                    radius: 30.0,
                                                    color: Colors.blueAccent),
                                                child: Text(
                                                  'Important',
                                                  style:
                                                      BaseStyles.whitenormal12,
                                                ),
                                              )
                                            ],
                                          ),
                                          heightSpace10,
                                          SizedBox(
                                            // width: Get.width,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .calendar_today_rounded,
                                                      color: AppColors
                                                          .greyprimarycolor,
                                                      size: 16,
                                                    ),
                                                    widthSpace5,
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'Due on ',
                                                          style: BaseStyles
                                                              .grey3Normal12,
                                                        ),
                                                        Text(
                                                          'Oct 10, 2022',
                                                          style: BaseStyles
                                                              .grey3medium12,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.cable_outlined,
                                                      size: 16,
                                                      color:
                                                          AppColors.greycolor3,
                                                    ),
                                                    widthSpace10,
                                                    Icon(
                                                      Icons.chat_bubble_outline,
                                                      color: AppColors
                                                          .greyprimarycolor,
                                                      size: 16,
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          heightSpace10,
                                          Container(
                                            height: 30,
                                            decoration: decorationbox(
                                              radius: 5.0,
                                              color: Color(0xffEDEDED),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.sync_lock_rounded,
                                                        size: 14,
                                                        color: AppColors
                                                            .greycolor1,
                                                      ),
                                                      widthSpace10,
                                                      Text(
                                                        '0/2 Subtasks',
                                                        style: BaseStyles
                                                            .grey2normal12,
                                                      )
                                                    ],
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        show[index] =
                                                            !show[index];
                                                      });
                                                    },
                                                    child: Icon(
                                                      show[index] != true
                                                          ? Icons
                                                              .keyboard_arrow_down_rounded
                                                          : Icons
                                                              .keyboard_arrow_up_rounded,
                                                      size: 14,
                                                      color:
                                                          AppColors.greycolor1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                heightSpace3,
                                Container(
                                  height: 5,
                                  width: Get.width * 0.90,
                                  decoration: MyDecoration.radiusonlydecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0.2,
                                          blurRadius: 3,
                                          offset: const Offset(0,
                                              2), // changes position of shadow
                                        ),
                                      ],
                                      blradius: 5.0,
                                      brradius: 5.0,
                                      color:
                                          AppColors.greyprimarycolor.shade100),
                                ),
                                heightSpace3,
                                Container(
                                  height: 5,
                                  width: Get.width * 0.85,
                                  decoration: MyDecoration.radiusonlydecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0.2,
                                          blurRadius: 3,
                                          offset: const Offset(0,
                                              2), // changes position of shadow
                                        ),
                                      ],
                                      blradius: 5.0,
                                      brradius: 5.0,
                                      color:
                                          AppColors.greyprimarycolor.shade100),
                                ),
                                heightSpace10,
                              ],
                            ),
                            InkWell(
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
                                        heightFactor: 0.4,
                                        child: Container(
                                          // height: 300,
                                          decoration:
                                              MyDecoration.radiusonlydecoration(
                                                  tlradius: 25.0,
                                                  trradius: 25.0),
                                          child: Column(
                                            children: [
                                              heightSpace20,
                                              Container(
                                                height: 4,
                                                width: 160,
                                                decoration: MyDecoration
                                                    .simpledecoration(
                                                        color: AppColors
                                                            .greyprimarycolor),
                                              ),
                                              heightSpace20,
                                              Text(
                                                'Add Task',
                                                style: BaseStyles.blackMedium16,
                                              ),
                                              heightSpace10,
                                              Container(
                                                width: Get.width * 0.95,
                                                child: textwidget(
                                                    // height: 150.0,
                                                    readonly: false,
                                                    onTap: () {},
                                                    minline: 8,
                                                    maxline: 8,
                                                    name: '',
                                                    text: 'Write'),
                                              ),
                                              Expanded(child: Container()),
                                              mybuttons(
                                                  width: Get.width * 0.95,
                                                  action: () {
                                                    Get.back();
                                                    showModalBottomSheet(
                                                        isDismissible: true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        context: context,
                                                        isScrollControlled:
                                                            true,
                                                        shape:
                                                            const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .vertical(
                                                            top:
                                                                Radius.circular(
                                                                    25.0),
                                                          ),
                                                        ),
                                                        builder: (context) {
                                                          return FractionallySizedBox(
                                                            heightFactor: 0.4,
                                                            child: Container(
                                                              // height: 300,
                                                              decoration: MyDecoration
                                                                  .radiusonlydecoration(
                                                                      tlradius:
                                                                          25.0,
                                                                      trradius:
                                                                          25.0),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        8.0),
                                                                child: Column(
                                                                  children: [
                                                                    heightSpace20,
                                                                    Container(
                                                                      height: 4,
                                                                      width:
                                                                          160,
                                                                      decoration:
                                                                          MyDecoration.simpledecoration(
                                                                              color: AppColors.greyprimarycolor),
                                                                    ),
                                                                    heightSpace20,
                                                                    Text(
                                                                      'Add Tasklist',
                                                                      style: BaseStyles
                                                                          .blackMedium16,
                                                                    ),
                                                                    heightSpace10,
                                                                    textwidget(
                                                                        name:
                                                                            'Task Name *',
                                                                        text:
                                                                            'Enter'),
                                                                    const Divider(
                                                                      thickness:
                                                                          0.3,
                                                                      height:
                                                                          25,
                                                                    ),
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: List.generate(
                                                                          allcolor.length,
                                                                          (i) => CircleAvatar(
                                                                                radius: 10,
                                                                                backgroundColor: allcolor[i],
                                                                              )),
                                                                    ),
                                                                    Expanded(
                                                                        child:
                                                                            Container()),
                                                                    mybuttons(
                                                                        // width: Get.width *
                                                                        //     0.95,
                                                                        action:
                                                                            () {},
                                                                        name:
                                                                            'Add',
                                                                        radius:
                                                                            8.0,
                                                                        color: AppColors
                                                                            .orangecolor,
                                                                        height:
                                                                            45.0),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        });
                                                  },
                                                  name: 'Add',
                                                  radius: 8.0,
                                                  color: AppColors.orangecolor,
                                                  height: 45.0),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Row(
                                    // crossAxisAlignment:
                                    //     CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: AppColors.greycolor3,
                                        size: 16,
                                      ),
                                      widthSpace5,
                                      Text(
                                        'Add Task',
                                        style: BaseStyles.grey3medium14,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: List.generate(
                                    10,
                                    (i) => Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Get.to(TaskdetailView());
                                              },
                                              child: Container(
                                                width: Get.width * 0.95,
                                                decoration: MyDecoration
                                                    .simple2decoration(
                                                        boxshadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.5),
                                                        spreadRadius: 0.2,
                                                        blurRadius: 3,
                                                        offset: const Offset(0,
                                                            2), // changes position of shadow
                                                      ),
                                                    ],
                                                        radius: 5.0,
                                                        color: AppColors
                                                            .whiteColor),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Container(
                                                                decoration: decorationbox(
                                                                    radius: 5.0,
                                                                    color: AppColors
                                                                        .yellowcolor),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          3.0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .remove_red_eye_outlined,
                                                                    color: AppColors
                                                                        .whiteColor,
                                                                    size: 14,
                                                                  ),
                                                                ),
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .arrow_drop_down,
                                                                size: 20,
                                                                color: AppColors
                                                                    .greycolor3,
                                                              ),
                                                              widthSpace10,
                                                              SizedBox(
                                                                width:
                                                                    Get.width *
                                                                        0.50,
                                                                child: Text(
                                                                  'Main task name goes h...',
                                                                  maxLines: 1,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: BaseStyles
                                                                      .blackMedium14,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            'UID-1',
                                                            style: BaseStyles
                                                                .grey3medium12,
                                                          )
                                                        ],
                                                      ),
                                                      heightSpace10,
                                                      CircleAvatar(
                                                        radius: 15,
                                                        backgroundColor:
                                                            Color(0xffE1F8FF),
                                                        child: Text(
                                                          'R',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff56CCF2),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 12.sp),
                                                        ),
                                                      ),
                                                      heightSpace10,
                                                      Row(
                                                        children: [
                                                          Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        20,
                                                                    vertical:
                                                                        3),
                                                            decoration:
                                                                decorationbox(
                                                                    radius:
                                                                        30.0,
                                                                    color: Colors
                                                                        .red),
                                                            child: Text(
                                                              'Followup',
                                                              style: BaseStyles
                                                                  .whitenormal12,
                                                            ),
                                                          ),
                                                          widthSpace5,
                                                          Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        20,
                                                                    vertical:
                                                                        3),
                                                            decoration:
                                                                decorationbox(
                                                                    radius:
                                                                        30.0,
                                                                    color: Colors
                                                                        .blueAccent),
                                                            child: Text(
                                                              'Important',
                                                              style: BaseStyles
                                                                  .whitenormal12,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      heightSpace10,
                                                      SizedBox(
                                                        // width: Get.width,
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .calendar_today_rounded,
                                                                  color: AppColors
                                                                      .greyprimarycolor,
                                                                  size: 16,
                                                                ),
                                                                widthSpace5,
                                                                Row(
                                                                  children: [
                                                                    Text(
                                                                      'Due on ',
                                                                      style: BaseStyles
                                                                          .grey3Normal12,
                                                                    ),
                                                                    Text(
                                                                      'Oct 10, 2022',
                                                                      style: BaseStyles
                                                                          .grey3medium12,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .cable_outlined,
                                                                  size: 16,
                                                                  color: AppColors
                                                                      .greycolor3,
                                                                ),
                                                                widthSpace10,
                                                                Icon(
                                                                  Icons
                                                                      .chat_bubble_outline,
                                                                  color: AppColors
                                                                      .greyprimarycolor,
                                                                  size: 16,
                                                                )
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      heightSpace10,
                                                      i == 0
                                                          ? Container(
                                                              decoration:
                                                                  decorationbox(
                                                                radius: 5.0,
                                                                color: Color(
                                                                    0xffEDEDED),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        8.0),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .sync_lock_rounded,
                                                                          size:
                                                                              14,
                                                                          color:
                                                                              AppColors.greycolor1,
                                                                        ),
                                                                        widthSpace10,
                                                                        Text(
                                                                          '0/2 Subtasks',
                                                                          style:
                                                                              BaseStyles.grey2normal12,
                                                                        )
                                                                      ],
                                                                    ),
                                                                    InkWell(
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          show[index] =
                                                                              !show[index];
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        show[index] !=
                                                                                true
                                                                            ? Icons.keyboard_arrow_down_rounded
                                                                            : Icons.keyboard_arrow_up_rounded,
                                                                        size:
                                                                            14,
                                                                        color: AppColors
                                                                            .greycolor1,
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          : Container()
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            heightSpace10,
                                          ],
                                        )),
                              ),
                              // heightSpace10,
                              InkWell(
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
                                          heightFactor: 0.4,
                                          child: Container(
                                            // height: 300,
                                            decoration: MyDecoration
                                                .radiusonlydecoration(
                                                    tlradius: 25.0,
                                                    trradius: 25.0),
                                            child: Column(
                                              children: [
                                                heightSpace20,
                                                Container(
                                                  height: 4,
                                                  width: 160,
                                                  decoration: MyDecoration
                                                      .simpledecoration(
                                                          color: AppColors
                                                              .greyprimarycolor),
                                                ),
                                                heightSpace20,
                                                Text(
                                                  'Add Task',
                                                  style:
                                                      BaseStyles.blackMedium16,
                                                ),
                                                heightSpace10,
                                                Container(
                                                  width: Get.width * 0.95,
                                                  child: textwidget(
                                                      // height: 150.0,
                                                      readonly: false,
                                                      onTap: () {},
                                                      minline: 8,
                                                      maxline: 8,
                                                      name: '',
                                                      text: 'Write'),
                                                ),
                                                Expanded(child: Container()),
                                                mybuttons(
                                                    width: Get.width * 0.95,
                                                    action: () {
                                                      Get.back();
                                                      showModalBottomSheet(
                                                          isDismissible: true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          context: context,
                                                          isScrollControlled:
                                                              true,
                                                          shape:
                                                              const RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .vertical(
                                                              top: Radius
                                                                  .circular(
                                                                      25.0),
                                                            ),
                                                          ),
                                                          builder: (context) {
                                                            return FractionallySizedBox(
                                                              heightFactor: 0.4,
                                                              child: Container(
                                                                // height: 300,
                                                                decoration: MyDecoration
                                                                    .radiusonlydecoration(
                                                                        tlradius:
                                                                            25.0,
                                                                        trradius:
                                                                            25.0),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          8.0),
                                                                  child: Column(
                                                                    children: [
                                                                      heightSpace20,
                                                                      Container(
                                                                        height:
                                                                            4,
                                                                        width:
                                                                            160,
                                                                        decoration:
                                                                            MyDecoration.simpledecoration(color: AppColors.greyprimarycolor),
                                                                      ),
                                                                      heightSpace20,
                                                                      Text(
                                                                        'Add Tasklist',
                                                                        style: BaseStyles
                                                                            .blackMedium16,
                                                                      ),
                                                                      heightSpace10,
                                                                      textwidget(
                                                                          name:
                                                                              'Task Name *',
                                                                          text:
                                                                              'Enter'),
                                                                      const Divider(
                                                                        thickness:
                                                                            0.3,
                                                                        height:
                                                                            25,
                                                                      ),
                                                                      Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: List.generate(
                                                                            allcolor.length,
                                                                            (i) => CircleAvatar(
                                                                                  radius: 10,
                                                                                  backgroundColor: allcolor[i],
                                                                                )),
                                                                      ),
                                                                      Expanded(
                                                                          child:
                                                                              Container()),
                                                                      mybuttons(
                                                                          // width: Get.width *
                                                                          //     0.95,
                                                                          action:
                                                                              () {},
                                                                          name:
                                                                              'Add',
                                                                          radius:
                                                                              8.0,
                                                                          color: AppColors
                                                                              .orangecolor,
                                                                          height:
                                                                              45.0),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          });
                                                    },
                                                    name: 'Add',
                                                    radius: 8.0,
                                                    color:
                                                        AppColors.orangecolor,
                                                    height: 45.0),
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Row(
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.add,
                                          color: AppColors.greycolor3,
                                          size: 16,
                                        ),
                                        widthSpace5,
                                        Text(
                                          'Add Task',
                                          style: BaseStyles.grey3medium14,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                        )
                ],
              ),
            );
          }),
    );
  }
}
