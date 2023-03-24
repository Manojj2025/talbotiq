import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:Talbotiq/app/modules/jobs_screens/controllers/createnewjob_controller.dart';
import 'package:Talbotiq/app/modules/jobs_screens/views/selectclient_view.dart';
import 'package:Talbotiq/app/widgets/buttons.dart';
import 'package:Talbotiq/app/widgets/textfiled.dart';
import 'package:timelines/timelines.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/decoration.dart';
import '../../../widgets/filters.dart';
import '../../../widgets/jobdetailwidget.dart';
import '../../../widgets/search.dart';
import '../controllers/schedule_controller.dart';

class ReminderScheduleView extends GetView<ReminderScheduleController> {
  const ReminderScheduleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ReminderScheduleController());
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: myappbar2(
            title: HomeName.AddNewReminder, show: false, show2: Container()),
        body: Container(
          width: Get.width,
          color: AppColors.whiteColor,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 10.0,
            ),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textwidget(name: 'Title*', text: 'Enter'),
                        const Divider(
                          thickness: 0.3,
                          height: 25,
                        ),
                        textwidget(name: 'Type*', text: 'Enter'),
                        const Divider(
                          thickness: 0.3,
                          height: 25,
                        ),
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
                        const Divider(
                          thickness: 0.3,
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'All Day',
                              style: BaseStyles.grey1Medium14,
                            ),
                            FlutterSwitch(
                              width: 35.0,
                              height: 18.0,
                              toggleSize: 16.0,
                              value: true,
                              borderRadius: 30.0,
                              padding: 2.0,
                              toggleColor: AppColors.whiteColor,
                              activeColor: AppColors.primaryColor,
                              inactiveColor:
                                  AppColors.greyprimarycolor.shade200,
                              onToggle: (val) {},
                            ),
                            // widthSpace10,
                          ],
                        ),
                        const Divider(
                          thickness: 0.3,
                          height: 25,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: textwidget2(
                                  icon: Icons.alarm,
                                  width: Get.width * 0.45,
                                  name: 'Start Time *',
                                  text: 'Select'),
                            ),
                            Expanded(
                              child: textwidget2(
                                  icon: Icons.alarm,
                                  width: Get.width * 0.45,
                                  name: 'End Time *',
                                  text: 'Select'),
                            )
                          ],
                        ),
                        const Divider(
                          thickness: 0.3,
                          height: 25,
                        ),
                        textwidget2(
                            name: 'Time Zone *',
                            text: 'GMT +5:30',
                            onTap: () {}),
                        const Divider(
                          thickness: 0.3,
                          height: 25,
                        ),
                        textwidget(
                            height: 150.0,
                            readonly: false,
                            onTap: () {},
                            minline: 8,
                            maxline: 8,
                            name: 'Details*',
                            text: 'Write'),
                        const Divider(
                          thickness: 0.3,
                          height: 25,
                        ),
                        Row(
                          children: List.generate(
                              6,
                              (index) => Row(
                                    children: [
                                      CircleAvatar(
                                          radius: 15,
                                          backgroundColor: Colors.primaries[
                                              Random().nextInt(
                                                  Colors.primaries.length)]),
                                      widthSpace20
                                    ],
                                  )),
                        ),
                        const Divider(
                          thickness: 0.3,
                          height: 25,
                        ),
                        Row(
                          children: [
                            Text(
                              'Add Members',
                              style: BaseStyles.blacNormal12,
                            ),
                            Text(
                              ' (Optional)',
                              style: BaseStyles.grey2normal14,
                            ),
                          ],
                        ),
                        heightSpace20,
                        Row(
                          children: [
                            Container(
                              decoration: decorationbox2(
                                  radius: 30.0,
                                  color: AppColors.greyprimarycolor.shade100),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Color(0xffF2C94C),
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
                                      'Abhishek sharma',
                                      style: BaseStyles.blacNormal12,
                                    ),
                                    Text(
                                      ' (Self)',
                                      style: BaseStyles.grey2normal14,
                                    ),
                                    widthSpace5,
                                    Icon(
                                      Icons.close,
                                      size: 20,
                                      color: AppColors.greycolor2,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            widthSpace10,
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
                                        heightFactor: 0.55,
                                        child: Container(
                                          // height: 300,
                                          decoration:
                                              MyDecoration.radiusonlydecoration(
                                                  tlradius: 25.0,
                                                  trradius: 25.0),
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
                                                  'Add Members',
                                                  style:
                                                      BaseStyles.blackMedium16,
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
                                                        return ListTile(
                                                          horizontalTitleGap:
                                                              2.0,
                                                          dense: true,
                                                          contentPadding:
                                                              EdgeInsets.zero,
                                                          title: Text(
                                                            'Nikita Sharma',
                                                            style: BaseStyles
                                                                .blacNormal14,
                                                          ),
                                                          subtitle: Text(
                                                            'nikita@gmail.com',
                                                            style: BaseStyles
                                                                .grey2Medium12,
                                                          ),
                                                          trailing: Wrap(
                                                            alignment:
                                                                WrapAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                decoration: decorationbox(
                                                                    radius:
                                                                        30.0,
                                                                    border: Border.all(
                                                                        color: Color(
                                                                            0xffE0E0E0))),
                                                                child: Wrap(
                                                                  alignment:
                                                                      WrapAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      WrapCrossAlignment
                                                                          .center,
                                                                  children: [
                                                                    widthSpace5,
                                                                    Text(
                                                                      index == 2
                                                                          ? 'Viewer'
                                                                          : 'Editor',
                                                                      style: BaseStyles
                                                                          .lightblackMedium12,
                                                                    ),
                                                                    widthSpace5,
                                                                    Icon(
                                                                      Icons
                                                                          .arrow_drop_down,
                                                                      color: AppColors
                                                                          .greyprimarycolor,
                                                                      size: 18,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                              Theme(
                                                                  data: Theme.of(
                                                                          context)
                                                                      .copyWith(
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
                                                                          value: controller
                                                                              .agree
                                                                              .value,
                                                                          onChanged:
                                                                              (value) {
                                                                            controller.agree.value =
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
                                                    color:
                                                        AppColors.orangecolor,
                                                    height: 45.0),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: CircleAvatar(
                                radius: 16,
                                backgroundColor: Color(0xffE0E0E0),
                                child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: AppColors.whiteColor,
                                    child: Icon(
                                      Icons.add,
                                      size: 20,
                                      color: AppColors.greycolor2,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        heightSpace50,
                        const Divider(
                          thickness: 0.3,
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                ),
                // Expanded(child: Container()),
                Row(
                  children: [
                    Expanded(
                      child: mybuttons(
                          style: BaseStyles.blacNormal14,
                          border: Border.all(
                              color: AppColors.greyprimarycolor.shade200),
                          action: () {
                            // Get.to(LeadAddedView());
                            // controller
                            //     .index
                            //     .value = ;
                            print('object');
                          },
                          name: 'Cancel',
                          color: AppColors.whiteColor,
                          height: 40.0),
                    ),
                    widthSpace10,
                    Expanded(
                        child: mybuttons(
                            style: BaseStyles.whitenormal14,
                            // border: Border.all(color: AppColors.orangecolor),
                            action: () {
                              // Get.to(LeadAddedView());
                              // controller
                              //     .index
                              //     .value = ;
                              print('object');
                            },
                            name: 'Submit',
                            color: AppColors.secondarydarkColor,
                            height: 40.0)),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
