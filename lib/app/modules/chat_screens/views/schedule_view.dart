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

class ScheduleView extends GetView<ScheduleController> {
  const ScheduleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ScheduleController());
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: myappbar2(
            title: HomeName.ScheduleMeeting, show: false, show2: Container()),
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
                        textwidget(name: 'Meeting Title *', text: 'Enter'),
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
                            Row(
                              children: [
                                Text(
                                  'All Day',
                                  style: BaseStyles.grey1Medium14,
                                ),
                                widthSpace10,
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
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Edit',
                                  style: BaseStyles.grey3medium14,
                                ),
                                widthSpace5,
                                InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      MyImages.edit,
                                      color: AppColors.greycolor3,
                                      height: 13,
                                      width: 13,
                                    )),
                              ],
                            )
                          ],
                        ),
                        const Divider(
                          thickness: 0.3,
                          height: 25,
                        ),
                        Row(
                          children: [
                            Text(
                              'Repeat',
                              style: BaseStyles.grey1Medium14,
                            ),
                            widthSpace10,
                            FlutterSwitch(
                              width: 35.0,
                              height: 18.0,
                              toggleSize: 16.0,
                              value: false,
                              borderRadius: 30.0,
                              padding: 2.0,
                              toggleColor: AppColors.whiteColor,
                              activeColor: AppColors.primaryColor,
                              inactiveColor:
                                  AppColors.greyprimarycolor.shade200,
                              onToggle: (val) {},
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 0.3,
                          height: 25,
                        ),
                        textfiled(
                            borderSidecolor:
                                AppColors.greyprimarycolor.shade200,
                            fillColor: AppColors.whiteColor,
                            eyeshow: true,
                            suffixIconcolor: AppColors.yellowcolor,
                            suffixicon: Icons.add,
                            prifixshow: false,
                            maxline: 1,
                            // ontap: () {},
                            readonly: false,
                            text: 'Add people or enter email'
                            // height: 40.0,
                            // minline: 1,
                            ),
                        heightSpace20,
                        textwidget(name: 'Add People *', text: 'Search'),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Remind Before',
                              style: BaseStyles.grey1Medium14,
                            ),
                            FlutterSwitch(
                              width: 35.0,
                              height: 18.0,
                              toggleSize: 16.0,
                              value: false,
                              borderRadius: 30.0,
                              padding: 2.0,
                              toggleColor: AppColors.whiteColor,
                              activeColor: AppColors.primaryColor,
                              inactiveColor:
                                  AppColors.greyprimarycolor.shade200,
                              onToggle: (val) {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Expanded(child: Container()),
                mybuttons(
                    action: () {},
                    name: 'Save',
                    color: AppColors.orangecolor,
                    height: 40.0)
              ],
            ),
          ),
        ));
  }
}
