import 'package:Talbotiq/app/modules/chat_screens/controllers/chat_controller.dart';
import 'package:Talbotiq/app/modules/chat_screens/views/schedule_view.dart';
import 'package:Talbotiq/app/modules/task_screens/views/projectdetail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../constants/values.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/decoration.dart';
import '../../../widgets/filters.dart';
import '../../../widgets/textfiled.dart';
import '../controllers/reminder_controller.dart';
import 'addreminder_view.dart';

class ReminderView extends GetView<ReminderController> {
  const ReminderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ReminderController());
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 30,
          title: Text(
            HomeName.Reminder,
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
                  InkWell(
                    onTap: () {
                      Get.to(ReminderScheduleView());
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
        body: Obx(
          () => ListView(
            children: [
              Container(
                width: Get.width,
                color: AppColors.whiteColor,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Obx(
                    (() => Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  controller.select.value = 'Calender';
                                },
                                child: Container(
                                  height: 35,
                                  // width: 100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color:
                                          controller.select.value == 'Calender'
                                              ? AppColors.primaryColor
                                              : AppColors.whiteColor,
                                      border: Border.all(
                                          color: AppColors.greyprimarycolor,
                                          width: 0.2),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 20.0),
                                    child: Text(
                                      "Calender",
                                      style:
                                          controller.select.value == 'Calender'
                                              ? BaseStyles.whitemedium14
                                              : BaseStyles.greyMedium14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            widthSpace10,
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  controller.select.value = 'List';
                                },
                                child: Container(
                                  height: 35,
                                  // width: 100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: controller.select.value == 'List'
                                          ? AppColors.primaryColor
                                          : AppColors.whiteColor,
                                      border: Border.all(
                                          color: AppColors.greyprimarycolor,
                                          width: 0.2),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, right: 20.0),
                                    child: Text(
                                      "List",
                                      style: controller.select.value == 'List'
                                          ? BaseStyles.whitemedium14
                                          : BaseStyles.greyMedium14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
              heightSpace10,
              controller.select.value == 'List'
                  ? Column(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: controller.list.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // index
                                    },
                                    child: Container(
                                      color: AppColors.whiteColor,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  controller.list[index]
                                                      .toString(),
                                                  style:
                                                      BaseStyles.blackMedium14,
                                                ),
                                                Icon(
                                                  Icons.keyboard_arrow_down,
                                                  size: 20,
                                                  color: AppColors.blackColor,
                                                )
                                              ],
                                            ),
                                            index == 0
                                                ? ListView.builder(
                                                    shrinkWrap: true,
                                                    physics:
                                                        NeverScrollableScrollPhysics(),
                                                    itemCount: 2,
                                                    itemBuilder:
                                                        (BuildContext context,
                                                            int index) {
                                                      return Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Divider(
                                                            thickness: 0.5,
                                                          ),
                                                          heightSpace10,
                                                          Container(
                                                            decoration: decorationbox(
                                                                radius: 5.0,
                                                                border: Border.all(
                                                                    color: AppColors
                                                                        .greyprimarycolor
                                                                        .shade100)),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  // borderRadius: BorderRadius.circular(5),
                                                                  border:
                                                                      Border(
                                                                    left: BorderSide(
                                                                        color: AppColors
                                                                            .primaryColor,
                                                                        width:
                                                                            5),
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          10.0),
                                                                  child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Change color',
                                                                              style: BaseStyles.blackMedium14,
                                                                            ),
                                                                            heightSpace5,
                                                                            Text(
                                                                              'Reference site about Lorem Ipsum, giving information on its origins...',
                                                                              style: BaseStyles.grey3Normal12,
                                                                            ),
                                                                            heightSpace3,
                                                                            Row(
                                                                              children: [
                                                                                Icon(
                                                                                  Icons.alarm,
                                                                                  size: 16,
                                                                                  color: AppColors.greycolor3,
                                                                                ),
                                                                                widthSpace3,
                                                                                Text(
                                                                                  '07/02/2023',
                                                                                  style: BaseStyles.grey2normal12,
                                                                                )
                                                                              ],
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Icon(
                                                                        Icons
                                                                            .more_vert_outlined,
                                                                        color: AppColors
                                                                            .greyprimarycolor,
                                                                        size:
                                                                            18,
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
                                                    })
                                                : Container(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  heightSpace10
                                ],
                              );
                            })
                      ],
                    )
                  : Column(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Reminders (2)',
                                      style: BaseStyles.blacNormal14,
                                    ),
                                    InkWell(
                                      onTap: () {},
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
                                heightSpace5,
                                ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 2,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Divider(
                                            thickness: 0.5,
                                          ),
                                          heightSpace10,
                                          Container(
                                            decoration: decorationbox(
                                                radius: 5.0,
                                                border: Border.all(
                                                    color: AppColors
                                                        .greyprimarycolor
                                                        .shade100)),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  // borderRadius: BorderRadius.circular(5),
                                                  border: Border(
                                                    left: BorderSide(
                                                        color: AppColors
                                                            .primaryColor,
                                                        width: 5),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Change color',
                                                              style: BaseStyles
                                                                  .blackMedium14,
                                                            ),
                                                            heightSpace5,
                                                            Text(
                                                              'Reference site about Lorem Ipsum, giving information on its origins...',
                                                              style: BaseStyles
                                                                  .grey3Normal12,
                                                            ),
                                                            heightSpace3,
                                                            Row(
                                                              children: [
                                                                Icon(
                                                                  Icons.alarm,
                                                                  size: 16,
                                                                  color: AppColors
                                                                      .greycolor3,
                                                                ),
                                                                widthSpace3,
                                                                Text(
                                                                  '07/02/2023',
                                                                  style: BaseStyles
                                                                      .grey2normal12,
                                                                )
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .more_vert_outlined,
                                                        color: AppColors
                                                            .greyprimarycolor,
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
        ));
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
