import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
import '../controllers/leaddetail_controller.dart';
import 'clientAdded.dart';

class AddNewLeadView extends GetView<LeaddetailController> {
  const AddNewLeadView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LeaddetailController());
    return SafeArea(
        child: Scaffold(
            appBar: myappbar2(
                title: HomeName.leaddetail, show: false, show2: Container()),
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
                      textwidget(name: 'Lead Title *', text: 'Enter'),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget(
                          name: 'Lead Owner *',
                          text: 'Enter',
                          onTap: () {
                            // select(context);
                          }),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget2(
                          name: 'Sales Exective',
                          text: 'Select',
                          onTap: () {
                            // select(context);
                          }),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget(
                          name: 'Name *',
                          text: 'Enter',
                          onTap: () {
                            // select(context);
                          }),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget(
                          name: 'Email *',
                          text: 'Enter',
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
                            "Phone *",
                            style: BaseStyles.grey1Medium14,
                          ),
                          heightSpace5,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              singlefiled(
                                color: AppColors.greyprimarycolor.shade300,
                                width: 60.0,
                                name: '+91',
                              ),
                              Expanded(
                                child: textfiled(
                                  // onchange: () {},
                                  // controller:
                                  //     controller,
                                  maxline: 1,
                                  // ontap: () {},
                                  readonly: false,
                                  text: 'Enter',
                                  height: 40.0,
                                  minline: 1,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget2(name: 'Lead Source *', text: 'Select'),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget2(name: 'Lead Status *', text: 'Select'),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget(
                          name: 'Company *',
                          text: 'Enter',
                          onTap: () {
                            // select(context);
                          }),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget(
                          name: 'Website *',
                          text: 'Enter',
                          onTap: () {
                            // select(context);
                          }),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget2(name: 'Industry *', text: 'Select'),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                      textwidget2(name: 'Company Size *', text: 'Select'),
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
                            Get.to(LeadAddedView());
                          },
                          name: 'Next',
                          color: AppColors.orangecolor,
                          height: 40.0)
                    ],
                  ),
                ),
              ),
            )));
  }
}
