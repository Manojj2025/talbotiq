import 'dart:math';

import 'package:Talbotiq/app/modules/chat_screens/controllers/chat_controller.dart';
import 'package:Talbotiq/app/modules/chat_screens/views/schedule_view.dart';
import 'package:Talbotiq/app/modules/planner_screens/views/report_view.dart';
import 'package:Talbotiq/app/modules/task_screens/views/projectdetail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/decoration.dart';
import '../../../widgets/filters.dart';
import '../../../widgets/search.dart';
import '../../../widgets/textfiled.dart';
import '../controllers/planner_controller.dart';

class PlannerView extends GetView<PlannerController> {
  const PlannerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => PlannerController());
    return Scaffold(
      appBar: myappbar2(
          title: HomeName.Planner,
          show: true,
          ontab2: () {
            Get.to(ReportView());
          },
          show2: InkWell(
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
                      heightFactor: 0.55,
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
                                'Assign',
                                style: BaseStyles.blackMedium16,
                              ),
                              heightSpace10,
                              ////
                              mysearch(
                                  width: Get.width * 0.92,
                                  readonly: false,
                                  decoration: decorationbox2(
                                      radius: 5.0,
                                      color:
                                          AppColors.greyprimarycolor.shade200)),
                              heightSpace10,
                              Expanded(
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 3,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return ListTile(
                                        horizontalTitleGap: 2.0,
                                        dense: true,
                                        contentPadding: EdgeInsets.zero,
                                        title: Text(
                                          'Nikita Sharma',
                                          style: BaseStyles.blacNormal14,
                                        ),
                                        subtitle: Text(
                                          'nikita@gmail.com',
                                          style: BaseStyles.grey2Medium12,
                                        ),
                                        trailing: Wrap(
                                          alignment: WrapAlignment.center,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          children: [
                                            // Container(
                                            //   decoration: decorationbox(
                                            //       radius: 30.0,
                                            //       border: Border.all(
                                            //           color:
                                            //               Color(0xffE0E0E0))),
                                            //   child: Wrap(
                                            //     alignment:
                                            //         WrapAlignment.center,
                                            //     crossAxisAlignment:
                                            //         WrapCrossAlignment.center,
                                            //     children: [
                                            //       widthSpace5,
                                            //       Text(
                                            //         index == 2
                                            //             ? 'Viewer'
                                            //             : 'Editor',
                                            //         style: BaseStyles
                                            //             .lightblackMedium12,
                                            //       ),
                                            //       widthSpace5,
                                            //       Icon(
                                            //         Icons.arrow_drop_down,
                                            //         color: AppColors
                                            //             .greyprimarycolor,
                                            //         size: 18,
                                            //       )
                                            //     ],
                                            //   ),
                                            // ),
                                            Theme(
                                                data: Theme.of(context).copyWith(
                                                    unselectedWidgetColor:
                                                        AppColors
                                                            .greyprimarycolor
                                                            .shade400),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: SizedBox(
                                                      height: 20.0,
                                                      width: 20.0,
                                                      child: Checkbox(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0)),
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
                                                      )),
                                                )),
                                          ],
                                        ),
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
                                  name: 'Add',
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
            child: Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: AppColors.orangecolor,
                  child: Text(
                    'R',
                    style: BaseStyles.whitebold12,
                  ),
                ),
                widthSpace5,
                Text(
                  'Me',
                  style: BaseStyles.whitenormal14,
                ),
                widthSpace5,
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 20,
                  color: AppColors.whiteColor,
                )
              ],
            ),
          )),
      body: ListView(
        children: [
          Container(
            width: Get.width,
            color: AppColors.whiteColor,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
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
          ),
          heightSpace10,
          Column(
            children: [
              TableCalender(),
              heightSpace10,
              Container(
                color: AppColors.whiteColor,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tasks',
                            style: BaseStyles.blacNormal14,
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
                                      heightFactor: 0.65,
                                      child: Container(
                                        // height: 300,
                                        decoration:
                                            MyDecoration.radiusonlydecoration(
                                                tlradius: 25.0, trradius: 25.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
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
                                              ////
                                              mysearch(
                                                  width: Get.width * 0.92,
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
                                                      return Column(
                                                        children: [
                                                          ListTile(
                                                            horizontalTitleGap:
                                                                2.0,
                                                            dense: true,
                                                            contentPadding:
                                                                EdgeInsets.only(
                                                                    left: 10),
                                                            title: Row(
                                                              children: [
                                                                CircleAvatar(
                                                                  radius: 10,
                                                                  backgroundColor: AppColors
                                                                      .primaryColor
                                                                      .withOpacity(
                                                                          0.3),
                                                                  child: Text(
                                                                    'R',
                                                                    style: BaseStyles
                                                                        .greenMedium12,
                                                                  ),
                                                                ),
                                                                widthSpace5,
                                                                CircleAvatar(
                                                                  radius: 10,
                                                                  backgroundColor: AppColors
                                                                      .primaryColor
                                                                      .withOpacity(
                                                                          0.3),
                                                                  child: Text(
                                                                    'S',
                                                                    style: BaseStyles
                                                                        .greenMedium12,
                                                                  ),
                                                                ),
                                                                widthSpace5,
                                                                Text(
                                                                  'UID-1',
                                                                  style: BaseStyles
                                                                      .grey3medium12,
                                                                )
                                                              ],
                                                            ),
                                                            subtitle: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                heightSpace5,
                                                                Text(
                                                                  'Change color',
                                                                  style: BaseStyles
                                                                      .blackMedium14,
                                                                ),
                                                                heightSpace5,
                                                                Row(
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .calendar_today_outlined,
                                                                      size: 12,
                                                                      color: AppColors
                                                                          .greycolor3,
                                                                    ),
                                                                    widthSpace3,
                                                                    Text(
                                                                      'Due on Oct 10, 2022',
                                                                      style: BaseStyles
                                                                          .lightblackMedium12,
                                                                    )
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                            trailing: Wrap(
                                                              alignment:
                                                                  WrapAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  WrapCrossAlignment
                                                                      .center,
                                                              children: [
                                                                // Container(
                                                                //   decoration: decorationbox(
                                                                //       radius: 30.0,
                                                                //       border: Border.all(
                                                                //           color:
                                                                //               Color(0xffE0E0E0))),
                                                                //   child: Wrap(
                                                                //     alignment:
                                                                //         WrapAlignment.center,
                                                                //     crossAxisAlignment:
                                                                //         WrapCrossAlignment.center,
                                                                //     children: [
                                                                //       widthSpace5,
                                                                //       Text(
                                                                //         index == 2
                                                                //             ? 'Viewer'
                                                                //             : 'Editor',
                                                                //         style: BaseStyles
                                                                //             .lightblackMedium12,
                                                                //       ),
                                                                //       widthSpace5,
                                                                //       Icon(
                                                                //         Icons.arrow_drop_down,
                                                                //         color: AppColors
                                                                //             .greyprimarycolor,
                                                                //         size: 18,
                                                                //       )
                                                                //     ],
                                                                //   ),
                                                                // ),
                                                                Theme(
                                                                    data: Theme.of(context).copyWith(
                                                                        unselectedWidgetColor: AppColors
                                                                            .greyprimarycolor
                                                                            .shade400),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              8.0),
                                                                      child: SizedBox(
                                                                          height: 20.0,
                                                                          width: 20.0,
                                                                          child: Checkbox(
                                                                            shape:
                                                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                                                            materialTapTargetSize:
                                                                                MaterialTapTargetSize.shrinkWrap,
                                                                            activeColor:
                                                                                AppColors.primaryColor,
                                                                            // checkColor: AppColors.secondary2Color,
                                                                            value:
                                                                                controller.agree.value,
                                                                            onChanged:
                                                                                (value) {
                                                                              controller.agree.value = value ?? false;
                                                                            },
                                                                          )),
                                                                    )),
                                                              ],
                                                            ),
                                                          ),
                                                          Divider()
                                                        ],
                                                      );
                                                    }),
                                              ),
                                              heightSpace30,
                                              mybuttons(
                                                  action: () {
                                                    Get.back();
                                                  },
                                                  name: 'Add',
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
                                  'Add New',
                                  style: BaseStyles.orangeMedium14,
                                ),
                                widthSpace10,
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 0.5,
                      ),
                      heightSpace5,
                      ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                index == 0 || index == 2
                                    ? Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          '10:00 AM, Dec 3 2022',
                                          style: BaseStyles.grey3Normal12,
                                        ),
                                      )
                                    : Container(),
                                heightSpace10,
                                Container(
                                  decoration: decorationbox(
                                      radius: 5.0,
                                      color: Colors.primaries[Random()
                                              .nextInt(Colors.primaries.length)]
                                          .withOpacity(0.1),
                                      border: Border.all(
                                          color: AppColors
                                              .greyprimarycolor.shade100)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        // borderRadius: BorderRadius.circular(5),
                                        border: Border(
                                          left: BorderSide(
                                              color: AppColors.primaryColor,
                                              width: 5),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          // crossAxisAlignment:
                                          //     CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 10,
                                                        backgroundColor:
                                                            AppColors
                                                                .primaryColor
                                                                .withOpacity(
                                                                    0.3),
                                                        child: Text(
                                                          'R',
                                                          style: BaseStyles
                                                              .greenMedium12,
                                                        ),
                                                      ),
                                                      widthSpace5,
                                                      CircleAvatar(
                                                        radius: 10,
                                                        backgroundColor:
                                                            AppColors
                                                                .primaryColor
                                                                .withOpacity(
                                                                    0.3),
                                                        child: Text(
                                                          'S',
                                                          style: BaseStyles
                                                              .greenMedium12,
                                                        ),
                                                      ),
                                                      widthSpace5,
                                                      Text(
                                                        'UID-1',
                                                        style: BaseStyles
                                                            .grey3medium12,
                                                      )
                                                    ],
                                                  ),
                                                  heightSpace5,
                                                  Text(
                                                    'Change color',
                                                    style: BaseStyles
                                                        .blackMedium14,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Icon(
                                              Icons.remove_circle_outline,
                                              color: AppColors.greyprimarycolor,
                                              size: 18,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                heightSpace10
                              ],
                            );
                          }),
                    ],
                  ),
                ),
              )
            ],
          ),

          //  Container(
          //           color: AppColors.whiteColor,
          //           child: TableCalendar(
          //             headerStyle: HeaderStyle(
          //               leftChevronVisible: true,
          //               rightChevronVisible: true,
          //               headerPadding: EdgeInsets.zero,
          //               headerMargin: EdgeInsets.zero,
          //               titleCentered: true,

          //               // headerPadding: EdgeInsets.symmetric(
          //               //     horizontal: 20.0, vertical: 10.0),
          //               titleTextStyle: BaseStyles.blackMedium16,
          //               formatButtonVisible: false,
          //             ),
          //             // headerVisible: false,
          //             calendarStyle: CalendarStyle(
          //                 selectedDecoration: BoxDecoration(
          //                     color: AppColors.primaryColor,
          //                     shape: BoxShape.circle),
          //                 disabledTextStyle:
          //                     TextStyle(color: AppColors.blackColor),
          //                 withinRangeTextStyle: BaseStyles.blacNormal12,
          //                 defaultTextStyle: BaseStyles.blacNormal12,
          //                 rangeHighlightColor: Colors.black),
          //             firstDay: DateTime(controller.kToday.year,
          //                 controller.kToday.month - 3, controller.kToday.day),
          //             lastDay: DateTime(controller.kToday.year + 50,
          //                 controller.kToday.month, controller.kToday.day),
          //             focusedDay: controller.focusedDay,
          //             calendarFormat: controller.calendarFormat,
          //             selectedDayPredicate: (day) {
          //               // Use `selectedDayPredicate` to determine which day is currently selected.
          //               // If this returns true, then `day` will be marked as selected.

          //               // Using `isSameDay` is recommended to disregard
          //               // the time-part of compared DateTime objects.
          //               return isSameDay(controller.selectedDay, day);
          //             },
          //             onDaySelected: (selectedDay, focusedDay) {
          //               if (!isSameDay(controller.selectedDay, selectedDay)) {
          //                 // Call `setState()` when updating the selected day
          //                 controller.selectdate.value = true;
          //                 controller.selectedDay = selectedDay;
          //                 controller.focusedDay = focusedDay;
          //                 print('object');
          //               }
          //             },
          //             onFormatChanged: (format) {
          //               if (controller.calendarFormat != format) {
          //                 // Call `setState()` when updating calendar format
          //                 controller.selectdate.value = true;
          //                 controller.calendarFormat = format;
          //               }
          //             },
          //             onPageChanged: (focusedDay) {
          //               // No need to call `setState()` here
          //               controller.focusedDay = focusedDay;
          //             },
          //           ),
          //         )
        ],
      ),
    );
  }
}

//////////////////calender widgets////////////////////////////////////////////////////////////
class TableCalender extends StatefulWidget {
  const TableCalender({super.key});

  @override
  State<TableCalender> createState() => _TableCalenderState();
}

class _TableCalenderState extends State<TableCalender> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: Column(
        children: [
          TableCalendar(
            headerStyle: HeaderStyle(
              leftChevronVisible: true,
              rightChevronVisible: true,
              headerPadding: EdgeInsets.zero,
              headerMargin: EdgeInsets.zero,
              titleCentered: true,

              // headerPadding: EdgeInsets.symmetric(
              //     horizontal: 20.0, vertical: 10.0),
              titleTextStyle: BaseStyles.blackMedium16,
              formatButtonVisible: false,
            ),
            // headerVisible: false,
            calendarStyle: CalendarStyle(
                // tablePadding: EdgeInsets.all(5),

                tableBorder: TableBorder(
                    top: BorderSide(
                  color: AppColors.greyprimarycolor.shade100,
                )),
                selectedDecoration: BoxDecoration(
                    color: AppColors.primaryColor, shape: BoxShape.circle),
                disabledTextStyle: TextStyle(color: AppColors.blackColor),
                withinRangeTextStyle: BaseStyles.blacNormal12,
                defaultTextStyle: BaseStyles.blacNormal12,
                rangeHighlightColor: Colors.black),
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              // Use `selectedDayPredicate` to determine which day is currently selected.
              // If this returns true, then `day` will be marked as selected.

              // Using `isSameDay` is recommended to disregard
              // the time-part of compared DateTime objects.
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(_selectedDay, selectedDay)) {
                // Call `setState()` when updating the selected day
                // controller.selectdate.value = true;
                setState(() {
                  print(selectedDay);
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              }
            },
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() {
                  // Call `setState()` when updating calendar format
                  // controller.selectdate.value = true;
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              // No need to call `setState()` here
              focusedDay = focusedDay;
            },
          ),
          Container(
            height: 5,
            width: 150,
            decoration: decorationbox(
                radius: 30.0, color: AppColors.greyprimarycolor.shade100),
          ),
          heightSpace10
        ],
      ),
    );
  }
}
