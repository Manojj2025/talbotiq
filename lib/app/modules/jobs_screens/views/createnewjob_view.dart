import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:talbotiq/app/modules/jobs_screens/controllers/createnewjob_controller.dart';
import 'package:talbotiq/app/modules/jobs_screens/views/selectclient_view.dart';
import 'package:talbotiq/app/widgets/buttons.dart';
import 'package:talbotiq/app/widgets/decoration.dart';
import 'package:talbotiq/app/widgets/textfiled.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import 'enterjob_view.dart';
import 'jobform_view.dart';

class CreatenewjobView extends GetView<CreatenewjobController> {
  const CreatenewjobView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => CreatenewjobController());
    return Scaffold(
        appBar: myappbar2(show: false, title: JobsName.newjob),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: AppColors.whiteColor,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select Client',
                        style: BaseStyles.grey2Medium12,
                      ),
                      heightSpace5,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                // backgroundColor: AppColors.primaryColor,
                                radius: 12,
                                child: Image.asset('assets/image/bajaj.png'),
                              ),
                              widthSpace5,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Bajaj Ltd.',
                                        style: BaseStyles.blacNormal14,
                                      ),
                                    ],
                                  ),
                                  heightSpace3,
                                  Text(
                                    'Noida',
                                    style: BaseStyles.grey2Medium12,
                                  )
                                ],
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(SelectclientView());
                            },
                            child: Image.asset(
                              MyImages.edit,
                              height: 17,
                              width: 17,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              heightSpace10,
              Container(
                width: Get.width,
                color: AppColors.whiteColor,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Enter Job Title',
                        style: BaseStyles.blackMedium16,
                      ),
                      heightSpace3,
                      Text(
                        'Find a great hire, fast',
                        style: BaseStyles.grey2Medium14,
                      ),
                      heightSpace10,
                      textfiled(
                          controller: controller.searchtxt,
                          readonly: true,
                          text: 'Enter Job',
                          ontap: () {
                            Get.to(EnterjobView());
                          }),
                      heightSpace10,
                      mybuttons(
                          action: () {
                            Get.to(JobformView());
                          },
                          color: AppColors.orangecolor,
                          name: 'Post Job'),
                      heightSpace10
                    ],
                  ),
                ),
              ),
              heightSpace10,
              Container(
                color: AppColors.whiteColor,
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Start from where you left',
                        style: BaseStyles.blackMedium14,
                      ),
                      heightSpace10,
                      Divider(
                        thickness: 0.5,
                      ),
                      _listWidget()
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  //////////////////// job list widget ui////////////////////////////////
  _listWidget() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  // padding: EdgeInsets.all(8.0),
                  color: AppColors.whiteColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                // backgroundColor: AppColors.primaryColor,
                                radius: 20,
                                child: Image.asset('assets/image/bajaj.png'),
                              ),
                              widthSpace10,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'UI/UX Designer',
                                        style: BaseStyles.blackMedium16,
                                      ),
                                      widthSpace5,
                                    ],
                                  ),
                                  heightSpace5,
                                  Text(
                                    'Tech Mahindra',
                                    style: BaseStyles.grey2Medium12,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.more_vert_outlined,
                              size: 18,
                              color: AppColors.greyprimarycolor,
                            ),
                          )
                        ],
                      ),
                      heightSpace10,
                      heightSpace5,
                      Container(
                        // height: 20,
                        decoration: decorationbox2(
                          radius: 20.0,
                          color: AppColors.greyprimarycolor.shade100,
                        ),

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Drafted at 5:21 PM, 24th Dec 21',
                            style: BaseStyles.blacNormal12,
                          ),
                        ),
                      ),
                      heightSpace5,
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 0.5,
              ),
              heightSpace10
            ],
          );
        });
  }
}
