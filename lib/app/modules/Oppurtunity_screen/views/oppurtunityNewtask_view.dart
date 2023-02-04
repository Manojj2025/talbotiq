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
import '../controllers/oppurtunitydetail_controller.dart';
import 'oppurtunityAdded.dart';

class OppurtunityNewTaskView extends GetView<OppurtunitydetailController> {
  const OppurtunityNewTaskView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => OppurtunitydetailController());
    return Scaffold(
        appBar: myappbar2(
            title: HomeName.addnewopp, show: false, show2: Container()),
        body: SingleChildScrollView(
          child: Container(
            width: Get.width,
            color: AppColors.whiteColor,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                right: 10.0,
                top: 10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textwidget(name: 'Opportunity Title *', text: 'Enter'),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget(
                      name: 'Opportunity Owner *',
                      text: 'Enter',
                      onTap: () {
                        // select(context);
                      }),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget2(
                      name: 'Account Name *',
                      text: 'Select',
                      onTap: () {
                        // select(context);
                      }),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget2(
                      name: 'Division *',
                      text: 'Select',
                      onTap: () {
                        // select(context);
                      }),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget2(
                      name: 'Opportunity Stages ',
                      text: 'Select',
                      onTap: () {
                        // select(context);
                      }),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget2(
                      name: 'Opportunity Type ',
                      text: 'Select',
                      onTap: () {
                        // select(context);
                      }),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget2(
                      name: 'Lead Source *  ',
                      text: 'Select',
                      onTap: () {
                        // select(context);
                      }),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget2(
                      name: 'Contact Name ',
                      text: 'Select',
                      onTap: () {
                        // select(context);
                      }),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total sale Amount",
                        style: BaseStyles.grey1Medium14,
                      ),
                      heightSpace5,
                      textfiled(
                        prifixtext: 'INR',
                        prifixshow: true,
                        // onchange: () {},
                        // controller:
                        //     controller,
                        maxline: 1,
                        // ontap: () {},
                        readonly: false,
                        text: 'Enter',
                        // height: 40.0,
                        // minline: 1,
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget(name: 'Exchange Rate', text: 'Enter'),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget2(
                      name: 'Closing Date',
                      text: 'Select',
                      icon: Icons.calendar_month),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget(
                      name: 'Probability (%)',
                      text: 'Enter',
                      onTap: () {
                        // select(context);
                      }),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget2(
                      name: 'Opportunity Status ',
                      text: 'Select',
                      onTap: () {
                        // select(context);
                      }),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget2(name: 'Country *', text: 'Select'),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget(name: 'Expected Revenue', text: 'Enter'),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget(name: 'Unit No.', text: 'Enter'),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget(name: 'Building Name', text: 'Enter'),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget(name: 'Street *', text: 'Enter'),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget2(name: 'State *', text: 'Select'),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget2(name: 'City *', text: 'Select'),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  textwidget(
                      name: 'Zip Code *',
                      text: 'Enter',
                      onTap: () {
                        // select(context);
                      }),
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
                      name: 'Description *',
                      text: 'Write'),
                  const Divider(
                    thickness: 0.3,
                    height: 25,
                  ),
                  mybuttons(
                      action: () {
                        Get.to(OppurtunityAddedView());
                      },
                      name: 'Add Opportunity',
                      color: AppColors.orangecolor,
                      height: 40.0)
                ],
              ),
            ),
          ),
        ));
  }
}
