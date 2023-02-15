import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
import '../controllers/task_controller.dart';

class SettingView extends GetView<TaskController> {
  const SettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => TaskController());
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: myappbar2(
            title: HomeName.Settings, show: false, show2: Container()),
        body: Container(
          width: Get.width,
          color: AppColors.whiteColor,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 10.0,
            ),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textwidget(name: 'Project Name *', text: 'Enter'),
                    const Divider(
                      thickness: 0.3,
                      height: 25,
                    ),
                    textwidget(name: 'Project Status *', text: 'Enter'),
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
                    Text(
                      'Privacy Setting *',
                      style: BaseStyles.grey1Medium14,
                    ),
                    heightSpace5,
                    Obx(
                      () => Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                controller.select.value = 'Private';
                              },
                              child: Container(
                                decoration: decorationbox(
                                  color: controller.select.value == 'Private'
                                      ? AppColors.primaryColor.withOpacity(0.1)
                                      : AppColors.whiteColor,
                                  border: Border.all(
                                      color:
                                          controller.select.value == 'Private'
                                              ? AppColors.primaryColor
                                              : Color(0xffE0E0E0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/image/lock.png',
                                        height: 20,
                                        width: 20,
                                        color:
                                            controller.select.value == 'Private'
                                                ? AppColors.primaryColor
                                                : AppColors.greyprimarycolor,
                                      ),
                                      widthSpace5,
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Private',
                                              style: controller.select.value ==
                                                      'Private'
                                                  ? BaseStyles.greennormal14
                                                  : BaseStyles.blacNormal14,
                                            ),
                                            Text(
                                              'Only added members can access',
                                              style: controller.select.value ==
                                                      'Private'
                                                  ? BaseStyles.greennormal10
                                                  : BaseStyles.grey3Normal10,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          widthSpace10,
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                controller.select.value = 'Public';
                              },
                              child: Container(
                                decoration: decorationbox(
                                  color: controller.select.value == 'Public'
                                      ? AppColors.primaryColor.withOpacity(0.1)
                                      : AppColors.whiteColor,
                                  border: Border.all(
                                      color: controller.select.value == 'Public'
                                          ? AppColors.primaryColor
                                          : Color(0xffE0E0E0)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/image/unlock.png',
                                        height: 20,
                                        width: 20,
                                        color:
                                            controller.select.value == 'Public'
                                                ? AppColors.primaryColor
                                                : AppColors.greyprimarycolor,
                                      ),
                                      widthSpace5,
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Public',
                                              style: controller.select.value ==
                                                      'Public'
                                                  ? BaseStyles.greennormal14
                                                  : BaseStyles.blacNormal14,
                                            ),
                                            Text(
                                              'All workspace members can access',
                                              style: controller.select.value ==
                                                      'Public'
                                                  ? BaseStyles.greennormal10
                                                  : BaseStyles.grey3Normal10,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 0.3,
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          'Assign Members',
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
                                  'Assign Members',
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
                          onTap: () {},
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
                    const Divider(
                      thickness: 0.3,
                      height: 25,
                    ),
                    textwidget(
                        height: 150.0,
                        readonly: false,
                        onTap: () {},
                        minline: 5,
                        maxline: 5,
                        name: 'Project Description',
                        text: 'Write'),
                  ],
                ),
                heightSpace30,
                heightSpace10,
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
