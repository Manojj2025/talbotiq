import 'package:Talbotiq/app/modules/jobs_screens/views/totalapplication.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:readmore/readmore.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/decoration.dart';
import '../../../widgets/jobdetailwidget.dart';
import '../../../widgets/textfiled.dart';
import '../controllers/leaddetail_controller.dart';

class LeadNewTaskView extends GetView<LeaddetailController> {
  const LeadNewTaskView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LeaddetailController());
    return Scaffold(
        appBar:
            myappbar2(title: JobsName.newtask, show: false, show2: Container()),
        body: Obx(
          () => ListView(
            children: [
              InkWell(
                onTap: () {
                  // Get.to(const ClientsdetailView());
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  color: AppColors.whiteColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Lead',
                          style: BaseStyles.grey2Medium12,
                        ),
                      ),
                      // heightSpace10,
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 18,
                            backgroundColor: AppColors.primaryColor,
                            child: CircleAvatar(
                              backgroundColor: Color(0xffECF7F3),
                              child: Image.asset(
                                'assets/image/2.png',
                                height: 20,
                                width: 20,
                                color: AppColors.primaryColor,
                              ),
                              radius: 17,
                            ),
                          ),
                          widthSpace10,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Raman Arora',
                                style: BaseStyles.blackMedium16,
                              ),
                              Text(
                                'raman@gmail.com',
                                style: BaseStyles.grey2normal12,
                              ),
                              heightSpace5,
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              heightSpace10,
              Container(
                color: AppColors.whiteColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      textwidget(name: 'Task Title *', text: 'Enter'),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget2(name: 'Task Type * ', text: 'Select'),
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
                                name: 'Start Date & Time',
                                text: 'Select'),
                          ),
                          Expanded(
                            child: textwidget2(
                                icon: Icons.calendar_today,
                                width: Get.width * 0.45,
                                name: 'End Date & Time',
                                text: 'Select'),
                          )
                        ],
                      ),
                      heightSpace10,
                      Container(
                        // color: AppColors.blackcolor,
                        child: Row(
                          children: [
                            Theme(
                                data: Theme.of(context).copyWith(
                                    unselectedWidgetColor:
                                        AppColors.greycolor2),
                                child: SizedBox(
                                    height: 20.0,
                                    width: 20.0,
                                    child: Checkbox(
                                      materialTapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      activeColor: AppColors.primaryColor,
                                      // checkColor: AppColors.secondary2Color,
                                      value: controller.agree.value,
                                      onChanged: (value) {
                                        controller.agree.value = value ?? false;
                                      },
                                    ))),
                            widthSpace10,
                            Expanded(
                              child: Text(
                                'All Days',
                                style: BaseStyles.blacNormal14,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget2(name: 'TimeZone * ', text: 'Select'),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget2(name: 'Assign To * ', text: 'Select'),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget2(name: 'Priority * ', text: 'Select'),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget2(name: 'Relates To * ', text: 'Select'),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget2(name: 'Color * ', text: 'Select'),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget2(name: 'Status * ', text: 'Select'),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      mybuttons(
                          action: () {
                            // Get.to(AddNewClientView());
                          },
                          name: 'Add New',
                          color: AppColors.orangecolor,
                          height: 40.0)
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
