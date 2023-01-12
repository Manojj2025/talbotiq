import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:readmore/readmore.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/decoration.dart';
import '../controllers/jobdetail_controller.dart';

class JobdetailView extends GetView<JobdetailController> {
  const JobdetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => JobdetailController());
    return Scaffold(
        appBar: myappbar2(title: JobsName.jobdetail, show: true),
        body: Obx(
          () => ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
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
                              backgroundColor: AppColors.primaryColor,
                              radius: 25,
                            ),
                            widthSpace10,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'UI/UX Designer',
                                      style: BaseStyles.blackBoldMedium18,
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
                                  style: BaseStyles.blackMedium13,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    heightSpace10,
                    Divider(
                      thickness: 0.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: AppColors.lightblackColor,
                                size: 18,
                              ),
                              widthSpace3,
                              Text(
                                'New Delhi',
                                style: BaseStyles.lightblacknormal16,
                              )
                            ],
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
                                style: BaseStyles.greyMedium14,
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
              heightSpace10,
              _jobitem(),
              controller.jobselectname.value == "Applications"
                  ? _jobapplication()
                  : controller.jobselectname.value == "Recommended Candidates"
                      ? _jobrecommaneded()
                      : controller.jobselectname.value == "Description"
                          ? Column(
                              children: [
                                heightSpace10,
                                _jobDetails(),
                                heightSpace10,
                                _jobDescription(),
                                heightSpace10,
                                _jobprofessional(),
                                heightSpace10,
                                _jobsoftprofessional(),
                                heightSpace10,
                                _jobprofile(),
                                heightSpace10,
                                _summary()
                              ],
                            )
                          : Container(),
            ],
          ),
        ));
  }

  Widget _jobrecommaneded() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: Get.width,
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Recommended(4)',
                      style: BaseStyles.blackMedium15,
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: AppColors.greyprimarycolor,
                    ),
                    widthSpace20,
                    Image.asset(
                      MyImages.filter,
                      height: 25,
                      width: 25,
                      color: AppColors.greyprimarycolor,
                    ),
                    widthSpace10
                  ],
                ),
                // widthSpace10
              ],
            ),
            _listrecomWidget()
          ],
        ),
      ),
    );
  }

  //////////////////// job application list widget ui////////////////////////////////
  _listrecomWidget() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
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
                      Divider(
                        thickness: 0.5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColors.primaryColor,
                                radius: 20,
                              ),
                              widthSpace10,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Manoj Sharma',
                                        style: BaseStyles.blackMedium14,
                                      ),
                                    ],
                                  ),
                                  heightSpace5,
                                  Text(
                                    'Flutter Developer',
                                    style: BaseStyles.blackMedium13,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Text(
                                'Assign',
                                style: BaseStyles.orangeMedium14,
                              ))
                        ],
                      ),
                      heightSpace10,
                      heightSpace5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                          widthSpace10,
                          Row(
                            children: [
                              Image.asset(
                                MyImages.bag,
                                color: AppColors.greyprimarycolor,
                                height: 16,
                                width: 16,
                              ),
                              widthSpace3,
                              Text(
                                '14 year',
                                style: BaseStyles.lightblackMedium12,
                              )
                            ],
                          ),
                          widthSpace10,
                          // Row(
                          //   children: [
                          //     Icon(
                          //       Icons.person_outline,
                          //       color: AppColors.greyprimarycolor,
                          //       size: 18,
                          //     ),
                          //     widthSpace3,
                          //     Text(
                          //       '12 Candidates',
                          //       style: BaseStyles.lightblackMedium12,
                          //     )
                          //   ],
                          // ),
                          Text(
                            '₹ 20 LPA',
                            style: BaseStyles.lightblackMedium12,
                          )
                        ],
                      ),

                      // heightSpace10,
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0, top: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LinearPercentIndicator(
                                alignment: MainAxisAlignment.start,
                                width: Get.width * 0.80,
                                lineHeight: 6.0,
                                percent: 0.5,
                                animation: true,
                                barRadius: const Radius.circular(20),
                                // center:
                                //     Text("50.0%", style: BaseStyles.whitebold14),
                                // trailing: Icon(Icons.mood),

                                backgroundColor:
                                    AppColors.greyprimarycolor.withOpacity(0.6),
                                progressColor: AppColors.orangecolor),
                            Text(
                              '70%',
                              style: BaseStyles.lightblackMedium14,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // heightSpace10
            ],
          );
        });
  }
  ///////////Application page////////////////////////////////////////////////////////

  Widget _jobapplication() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: Get.width,
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Application(4)',
                      style: BaseStyles.blackMedium15,
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: AppColors.greyprimarycolor,
                    ),
                    widthSpace20,
                    Image.asset(
                      MyImages.filter,
                      height: 25,
                      width: 25,
                      color: AppColors.greyprimarycolor,
                    ),
                    widthSpace10
                  ],
                ),
                // widthSpace10
              ],
            ),
            _listWidget()
          ],
        ),
      ),
    );
  }

  //////////////////// job application list widget ui////////////////////////////////
  _listWidget() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
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
                      Divider(
                        thickness: 0.5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColors.primaryColor,
                                radius: 20,
                              ),
                              widthSpace10,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Nikita Sharma',
                                        style: BaseStyles.blackMedium14,
                                      ),
                                    ],
                                  ),
                                  heightSpace5,
                                  Text(
                                    'Tech Mahindra',
                                    style: BaseStyles.blackMedium13,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Icon(
                              Icons.more_vert_outlined,
                              color: AppColors.greyprimarycolor,
                            ),
                          )
                        ],
                      ),
                      heightSpace10,
                      heightSpace5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                          widthSpace10,
                          Row(
                            children: [
                              Image.asset(
                                MyImages.bag,
                                color: AppColors.greyprimarycolor,
                                height: 16,
                                width: 16,
                              ),
                              widthSpace3,
                              Text(
                                '14 year',
                                style: BaseStyles.lightblackMedium12,
                              )
                            ],
                          ),
                          widthSpace10,
                          // Row(
                          //   children: [
                          //     Icon(
                          //       Icons.person_outline,
                          //       color: AppColors.greyprimarycolor,
                          //       size: 18,
                          //     ),
                          //     widthSpace3,
                          //     Text(
                          //       '12 Candidates',
                          //       style: BaseStyles.lightblackMedium12,
                          //     )
                          //   ],
                          // ),
                          Text(
                            '₹ 20 LPA',
                            style: BaseStyles.lightblackMedium12,
                          )
                        ],
                      ),

                      // heightSpace10,
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Skills:',
                                  style: BaseStyles.blackMedium13,
                                ),
                                Text(
                                  'MS Office,MIS,Tally,Exce...',
                                  style: BaseStyles.greyMedium13,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            Text(
                              'Aug 15,22',
                              style: BaseStyles.greyMedium13,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // heightSpace10
            ],
          );
        });
  }

/////////////summary................................................................
  Widget _summary() {
    return Container(
      height: 100,
      width: Get.width,
      color: AppColors.whiteColor,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
                radius: 10,
                backgroundColor: AppColors.greyprimarycolor,
                child: Icon(
                  Icons.check,
                  color: AppColors.whiteColor,
                  size: 12,
                )),
            widthSpace10,
            Text(
              'That\'s all folk!',
              style: BaseStyles.greyMedium13,
            )
          ]),
    );
  }

  //////////////////// job name list widget ui////////////////////////////////
  Widget _jobitem() {
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
                              controller.joblist[index]['value'] == ""
                                  ? controller.joblist[index]['name'].toString()
                                  : "${controller.joblist[index]['name'].toString()} (${controller.joblist[index]['value'].toString()})",
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

  ////// job details////////////////////////////////
  Widget _jobDetails() {
    return Container(
        // height: 50,
        width: Get.width,
        color: AppColors.whiteColor,
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                JobsName.jobdetail,
                style: BaseStyles.blackMedium15,
              ),
              heightSpace10,
              heightSpace5,
              jobdetails(
                  icon: Icons.add, title: 'Experience', title2: '1 to 3 year'),
              heightSpace10,
              jobdetails(
                  icon: Icons.add_box_sharp,
                  title: 'CTC',
                  title2: '6 to 8 LPA'),
              heightSpace10,
              jobdetails(
                  icon: Icons.location_on,
                  title: 'Job Location',
                  title2: 'Gurugram'),
              heightSpace10,
              jobdetails(
                  icon: Icons.person_add,
                  title: 'Job Type',
                  title2: 'Full Time'),
              heightSpace10,
              jobdetails(
                  icon: Icons.add_box_sharp, title: 'No of Jobs', title2: '2'),
            ],
          ),
        ));
  }

  Row jobdetails({icon, title, title2}) {
    return Row(
      children: [
        CircleAvatar(
          radius: 12,
          backgroundColor: AppColors.primaryColor,
          child: Icon(
            icon,
            color: AppColors.whiteColor,
            size: 12,
          ),
        ),
        widthSpace10,
        SizedBox(
          width: Get.width * 0.26,
          child: Text(
            '$title:',
            style: BaseStyles.greyMedium14,
          ),
        ),
        // widthSpace30,
        Flexible(
          child: Text(
            title2,
            style: BaseStyles.blackNormal14,
          ),
        )
      ],
    );
  }
  /////////job description////////////////////////////////////////////////////////////////

  Widget _jobDescription() {
    return Container(
        // height: 50,
        width: Get.width,
        color: AppColors.whiteColor,
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                JobsName.jobDescription,
                style: BaseStyles.blackMedium15,
              ),
              heightSpace10,
              heightSpace5,
              ReadMoreText(
                "We are looking for a Java developer responsible for building Java applications with Springboot Framework. This includes anything between complex groups of back-end services and their client-end (desktop and mobile) counterparts. Your primary responsibility",
                trimLines: 4,
                style: BaseStyles.blacknormal13,
                colorClickableText: AppColors.primaryColor,
                trimMode: TrimMode.Line,
                trimCollapsedText: '...Show more',
                trimExpandedText: ' show less',
              ),
            ],
          ),
        ));
  }
  ///////// professional skills////////////////////////////////

  Widget _jobprofessional() {
    return Container(
      height: 80,
      width: Get.width,
      color: AppColors.whiteColor,
      margin: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              JobsName.professionalSkills,
              style: BaseStyles.blackMedium15,
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.joblist2.length,
                itemBuilder: (BuildContext context, int index) {
                  return Obx(
                    (() => Row(
                          children: [
                            widthSpace10,
                            GestureDetector(
                              onTap: () {
                                controller.jobselectname2.value =
                                    controller.joblist2[index].toString();
                              },
                              child: Container(
                                height: 30,
                                // width: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: controller.jobselectname2.value ==
                                            controller.joblist2[index]
                                        ? AppColors.primaryColor
                                        : AppColors.whiteColor,
                                    border: Border.all(
                                        color: AppColors.greyprimarycolor,
                                        width: 0.2),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                  child: Text(
                                    controller.joblist2[index].toString(),
                                    style: controller.jobselectname2.value ==
                                            controller.joblist2[index]
                                        ? BaseStyles.whitemedium14
                                        : BaseStyles.blacNormal14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  );
                }),
          ),
          heightSpace10
        ],
      ),
    );
  }

  ///////// professional skills////////////////////////////////

  Widget _jobsoftprofessional() {
    return Container(
      height: 80,
      width: Get.width,
      color: AppColors.whiteColor,
      margin: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              JobsName.softSkills,
              style: BaseStyles.blackMedium15,
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.joblist2.length,
                itemBuilder: (BuildContext context, int index) {
                  return Obx(
                    (() => Row(
                          children: [
                            widthSpace10,
                            GestureDetector(
                              onTap: () {
                                controller.jobselectname3.value =
                                    controller.joblist2[index].toString();
                              },
                              child: Container(
                                height: 30,
                                // width: 100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: controller.jobselectname3.value ==
                                            controller.joblist2[index]
                                        ? AppColors.primaryColor
                                        : AppColors.whiteColor,
                                    border: Border.all(
                                        color: AppColors.greyprimarycolor,
                                        width: 0.2),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                  child: Text(
                                    controller.joblist2[index].toString(),
                                    style: controller.jobselectname3.value ==
                                            controller.joblist2[index]
                                        ? BaseStyles.whitemedium14
                                        : BaseStyles.blacNormal14,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  );
                }),
          ),
          heightSpace10
        ],
      ),
    );
  }

  /////// designation////////////////////////////////////////////////////////////////
  Widget _jobprofile() {
    return Container(
      color: AppColors.whiteColor,
      width: Get.width,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                widthSpace10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Designation',
                        style: BaseStyles.lightblackMedium12,
                      ),
                      heightSpace5,
                      Text(
                        'UX Designer',
                        style: BaseStyles.blacNormal15,
                      )
                    ],
                  ),
                ),
                // widthSpace20,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Department',
                        style: BaseStyles.lightblackMedium12,
                      ),
                      heightSpace5,
                      Text(
                        'Design',
                        style: BaseStyles.blacNormal15,
                      )
                    ],
                  ),
                )
              ],
            ),
            heightSpace20,
            Row(
              // mainAxisAlignment: MainAxisAlignment.s,
              children: [
                widthSpace10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Minimun Qualification',
                        style: BaseStyles.lightblackMedium12,
                      ),
                      heightSpace5,
                      Text(
                        'B Tech',
                        style: BaseStyles.blacNormal15,
                      )
                    ],
                  ),
                ),
                // widthSpace50,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Due Date',
                        style: BaseStyles.lightblackMedium12,
                      ),
                      heightSpace5,
                      Text(
                        '28th Feb 2022',
                        style: BaseStyles.blacNormal15,
                      )
                    ],
                  ),
                )
              ],
            ),
            heightSpace10,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 35,
                width: Get.width,
                decoration: decorationbox2(
                    radius: 5.0,
                    color: AppColors.primaryColor.withOpacity(0.1)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'No due Date',
                    style: BaseStyles.greenMedium14,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
