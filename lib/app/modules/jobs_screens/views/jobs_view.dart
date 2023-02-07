import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:Talbotiq/app/widgets/decoration.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/filters.dart';
import '../controllers/jobs_controller.dart';
import 'jobdetail_view.dart';

class JobsView extends GetView<JobsController> {
  const JobsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => JobsController());
    return Scaffold(
        appBar: myappbar(),
        body: Column(
          children: [
            //// filters and soryby widget ui//////
            Card(
              elevation: 0,
              color: AppColors.whiteColor,
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        filter(context, controller);
                      },
                      child: Row(
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
                    Container(
                      height: 40,
                      width: 1,
                      color: AppColors.greyprimarycolor,
                    ),
                    GestureDetector(
                      onTap: () {
                        sortby(context, controller);
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            MyImages.sort,
                            height: 20,
                            width: 20,
                          ),
                          widthSpace10,
                          Text(
                            JobsName.sortby,
                            style: BaseStyles.lightblackMedium14,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            //////////////////// job name list widget ui////////////////////////////////
            heightSpace10,
            _jobname(), heightSpace10,
            _listWidget()
          ],
        ));
  }

  //////////////////// job name list widget ui////////////////////////////////
  _jobname() {
    return Container(
      height: 50,
      width: Get.width,
      color: AppColors.whiteColor,
      margin: EdgeInsets.zero,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: controller.joblist.length,
          itemBuilder: (BuildContext context, int index) {
            return Obx(
              (() => Row(
                    children: [
                      widthSpace10,
                      GestureDetector(
                        onTap: () {
                          controller.jobselectname.value =
                              controller.joblist[index]['name'].toString();
                        },
                        child: Container(
                          height: 30,
                          // width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: controller.jobselectname.value ==
                                      controller.joblist[index]['name']
                                  ? AppColors.primaryColor
                                  : AppColors.whiteColor,
                              border: Border.all(
                                  color: AppColors.greyprimarycolor,
                                  width: 0.2),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Text(
                              "${controller.joblist[index]['name'].toString()} (${controller.joblist[index]['value'].toString()})",
                              style: controller.jobselectname.value ==
                                      controller.joblist[index]['name']
                                  ? BaseStyles.whitemedium14
                                  : BaseStyles.greyMedium14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            );
          }),
    );
  }

  //////////////////// job list widget ui////////////////////////////////
  _listWidget() {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(const JobdetailView());
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    color: AppColors.whiteColor,
                    child: Column(
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
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 3),
                                          decoration: decorationbox2(
                                              color: AppColors.primaryColor2
                                                  .withOpacity(0.2),
                                              radius: 30.0),
                                          child: Text(
                                            '6 new',
                                            style: BaseStyles.greenMedium11,
                                          ),
                                        )
                                      ],
                                    ),
                                    heightSpace5,
                                    Text(
                                      'Tech Mahindra',
                                      style: BaseStyles.blackMedium12,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                  jobedit(
                                    context: context,
                                    controller: controller,
                                    listname: controller.editlist,
                                    icon: controller.editlist,
                                  );
                                },
                                icon: Icon(
                                  Icons.more_vert_outlined,
                                  size: 16,
                                  color: AppColors.greyprimarycolor,
                                )),
                          ],
                        ),
                        heightSpace10,
                        heightSpace5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.greyprimarycolor,
                                  size: 18,
                                ),
                                widthSpace3,
                                Text(
                                  'New Delhi',
                                  style: BaseStyles.lightblackMedium12,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month_sharp,
                                  size: 18,
                                  color: AppColors.greyprimarycolor,
                                ),
                                widthSpace3,
                                Text(
                                  '21 Aug',
                                  style: BaseStyles.lightblackMedium12,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.person_outline,
                                  color: AppColors.greyprimarycolor,
                                  size: 18,
                                ),
                                widthSpace3,
                                Text(
                                  '12 Candidates',
                                  style: BaseStyles.lightblackMedium12,
                                )
                              ],
                            ),
                            Text(
                              '₹ 20 LPA',
                              style: BaseStyles.lightblackMedium12,
                            )
                          ],
                        ),
                        heightSpace5,
                        Divider(
                          thickness: 0.5,
                        ),
                        // heightSpace10,
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'MS Office,MIS,Tally,Exce...',
                                style: BaseStyles.lightblackMedium12,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: AppColors.activecolor,
                                  ),
                                  widthSpace5,
                                  Text(
                                    'Active',
                                    style: BaseStyles.greyNormal12,
                                  ),
                                  widthSpace5,
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: AppColors.greyprimarycolor,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                heightSpace10
              ],
            );
          }),
    );
  }
}
