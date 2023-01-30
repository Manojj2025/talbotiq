import 'package:Talbotiq/app/modules/jobs_screens/views/totalapplication.dart';
import 'package:Talbotiq/app/widgets/buttons.dart';
import 'package:Talbotiq/app/widgets/decoration.dart';
import 'package:Talbotiq/app/widgets/filters.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:readmore/readmore.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/jobdetailwidget.dart';
import '../../../widgets/search.dart';
import '../../../widgets/textfiled.dart';
import '../controllers/leaddetail_controller.dart';

class LeaddetailView extends GetView<LeaddetailController> {
  const LeaddetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LeaddetailController());
    return Scaffold(
      appBar:
          myappbar2(title: HomeName.leaddetail, show: true, show2: Container()),
      body: Obx(
        () => ListView(
          children: [
            GestureDetector(
              onTap: () {
                // Get.to(const ClientsdetailView());
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Icon(Icons.bookmark_border_rounded,
                                    size: 16, color: AppColors.orangecolor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    heightSpace10,
                    // heightSpace5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.business,
                              color: AppColors.greyprimarycolor,
                              size: 16,
                            ),
                            widthSpace3,
                            Text(
                              'Oodles Technologies',
                              style: BaseStyles.lightblackMedium12,
                            )
                          ],
                        ),
                        widthSpace20,
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 16,
                              color: AppColors.greyprimarycolor,
                            ),
                            widthSpace3,
                            Text(
                              'Gurugram',
                              style: BaseStyles.lightblackMedium12,
                            )
                          ],
                        ),
                      ],
                    ),
                    heightSpace5,
                    Divider(
                      thickness: 0.5,
                    ),
                    // heightSpace10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/image/2.png',
                              height: 16,
                              width: 16,
                              color: AppColors.greycolor3,
                            ),
                            widthSpace3,
                            Text(
                              'Source:',
                              style: BaseStyles.lightblacklarge12,
                            ),
                            Text(
                              'Cold call',
                              style: BaseStyles.lightblackMedium12,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            // status(
                            //     context: context,
                            //     title: 'Update Status',
                            //     controller: controller,
                            //     list: controller.sortlist);
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_rounded,
                                size: 16,
                                color: AppColors.orangecolor,
                              ),
                              widthSpace5,
                              Text(
                                'Contacted',
                                style: BaseStyles.lightblackMedium12,
                              ),
                              widthSpace5,
                              Icon(
                                Icons.arrow_drop_down,
                                color: AppColors.greyprimarycolor,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            heightSpace10,
            _item(),
            heightSpace10,
            controller.selectname.value == 'Overview'
                ? Column(
                    children: [
                      Overview(),
                      heightSpace10,
                      leadbutton(context),
                      heightSpace10,
                      leadDetails()
                    ],
                  )
                : controller.selectname.value == 'Activities'
                    ? Activities(context)
                    : Container()
          ],
        ),
      ),
    );
  }

  Widget settings() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // margin: const EdgeInsets.only(top: 10),
          width: Get.width,
          color: AppColors.whiteColor,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // heightSpace10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Recruiters',
                          style: BaseStyles.blackMedium14,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: AppColors.orangecolor,
                          size: 16,
                        ),
                        // widthSpace20,
                        widthSpace3,
                        Text(
                          'Add',
                          style: BaseStyles.orangeMedium14,
                        ),
                        widthSpace10,
                      ],
                    ),
                    // widthSpace10
                  ],
                ),
                heightSpace10,
                Divider(
                  thickness: 0.5,
                ),

                Container(
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
                                  Text(
                                    'James',
                                    style: BaseStyles.blackMedium16,
                                  ),
                                  widthSpace5,
                                  heightSpace5,
                                  Text(
                                    'James@gmail.com',
                                    style: BaseStyles.lightblackMedium12,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.more_vert,
                                  size: 20,
                                  color: AppColors.greyprimarycolor,
                                ),
                              ),
                              widthSpace10,
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.bookmark,
                                  size: 20,
                                  color: AppColors.orangecolor,
                                ),
                              ),
                            ],
                          ),
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
                                Icons.call,
                                color: AppColors.greyprimarycolor,
                                size: 18,
                              ),
                              widthSpace3,
                              Text(
                                '9999999999',
                                style: BaseStyles.lightblackMedium12,
                              )
                            ],
                          ),
                          widthSpace10,
                          Row(
                            children: [
                              Icon(
                                Icons.person_outline_sharp,
                                size: 18,
                                color: AppColors.greyprimarycolor,
                              ),
                              widthSpace3,
                              Text(
                                'Reporting to:',
                                style: BaseStyles.grey2Medium12,
                              ),
                              Text(
                                'Ranjeet Kumar',
                                style: BaseStyles.grey3Normal12,
                              ),
                            ],
                          ),
                          widthSpace10,
                        ],
                      ),
                      // heightSpace5,
                      // Divider(
                      //   thickness: 0.5,
                      // ),
                      // heightSpace10,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        heightSpace10,
        Container(
          // margin: const EdgeInsets.only(top: 10),
          width: Get.width,
          color: AppColors.whiteColor,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // heightSpace10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Account Manager',
                          style: BaseStyles.blackMedium14,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.change_circle_outlined,
                          color: AppColors.orangecolor,
                          size: 16,
                        ),
                        widthSpace3,
                        // widthSpace20,
                        Text(
                          'Change',
                          style: BaseStyles.orangeMedium14,
                        ),
                        widthSpace10,
                      ],
                    ),
                    // widthSpace10
                  ],
                ),
                heightSpace10,
                Divider(
                  thickness: 0.5,
                ),

                Container(
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
                                  Text(
                                    'James',
                                    style: BaseStyles.blackMedium16,
                                  ),
                                  widthSpace5,
                                  heightSpace5,
                                  Text(
                                    'James@gmail.com',
                                    style: BaseStyles.lightblackMedium12,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.more_vert,
                                  size: 20,
                                  color: AppColors.greyprimarycolor,
                                ),
                              ),
                              // widthSpace10,
                              // GestureDetector(
                              //   onTap: () {},
                              //   child: Icon(
                              //     Icons.bookmark,
                              //     size: 20,
                              //     color: AppColors.orangecolor,
                              //   ),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        heightSpace10,
        Container(
          // margin: const EdgeInsets.only(top: 10),
          width: Get.width,
          color: AppColors.whiteColor,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // heightSpace10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Contract Details',
                          style: BaseStyles.blackMedium14,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: AppColors.orangecolor,
                          size: 16,
                        ),
                        widthSpace3,
                        // widthSpace20,
                        Text(
                          'Add',
                          style: BaseStyles.orangeMedium14,
                        ),
                        widthSpace10,
                      ],
                    ),
                    // widthSpace10
                  ],
                ),
                heightSpace10,
                Divider(
                  thickness: 0.5,
                ),

                Container(
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
                                  Text(
                                    'James',
                                    style: BaseStyles.blackMedium16,
                                  ),
                                  widthSpace5,
                                  heightSpace5,
                                  Text(
                                    'James@gmail.com',
                                    style: BaseStyles.lightblackMedium12,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.more_vert,
                                  size: 20,
                                  color: AppColors.greyprimarycolor,
                                ),
                              ),
                              // widthSpace10,
                              // GestureDetector(
                              //   onTap: () {},
                              //   child: Icon(
                              //     Icons.bookmark,
                              //     size: 20,
                              //     color: AppColors.orangecolor,
                              //   ),
                              // ),
                            ],
                          ),
                        ],
                      ),
                      heightSpace10,
                      Image.asset('assets/image/Frame.png'),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Client Details',
                                  style: BaseStyles.blackMedium14,
                                ),
                                GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                      MyImages.edit,
                                      height: 16,
                                      width: 16,
                                    )),
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 0.5,
                          ),
                          heightSpace5,
                          Row(
                            children: [
                              widthSpace10,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Contract ID',
                                      style: BaseStyles.lightblackMedium12,
                                    ),
                                    heightSpace5,
                                    Text(
                                      'TAL4223',
                                      style: BaseStyles.blacNormal14,
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
                                      'Contract Name',
                                      style: BaseStyles.lightblackMedium12,
                                    ),
                                    heightSpace5,
                                    Text(
                                      'Tech Mahindra',
                                      style: BaseStyles.blacNormal14,
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
                                      'Duration',
                                      style: BaseStyles.lightblackMedium12,
                                    ),
                                    heightSpace5,
                                    SizedBox(
                                      width: Get.width * 0.25,
                                      child: Text(
                                        '22 March 22-22 March 2023',
                                        style: BaseStyles.blacNormal14,
                                      ),
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
                                      'Contract Type',
                                      style: BaseStyles.lightblackMedium12,
                                    ),
                                    heightSpace5,
                                    Text(
                                      'Percentage',
                                      style: BaseStyles.blacNormal14,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          heightSpace20,
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

//////////////////////////notes///////////////////////////////////
  Widget Activities(context) {
    return Container(
      // margin: const EdgeInsets.only(top: 10),
      width: Get.width,
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    status(
                        size: 0.3,
                        button: mybuttons(
                            width: Get.width * 0.90,
                            action: () {
                              Get.back();
                            },
                            name: 'Submit',
                            radius: 5.0,
                            color: AppColors.orangecolor,
                            height: 45.0),
                        context: context,
                        list: controller.activity,
                        controller: controller,
                        title: 'Activity status');
                  },
                  child: Row(
                    children: [
                      Text(
                        'Open Activities',
                        style: BaseStyles.blackMedium14,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.greyprimarycolor,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: AppColors.orangecolor,
                      size: 16,
                    ),
                    widthSpace5,
                    Text(
                      'Add',
                      style: BaseStyles.orangeMedium14,
                    ),
                    widthSpace10,
                  ],
                ),
                // widthSpace10
              ],
            ),
            heightSpace10,
            Divider(
              thickness: 0.5,
            ),
            _listActivitiesWidget()
          ],
        ),
      ),
    );
  }

  //////////////////// job list widget ui////////////////////////////////
  _listActivitiesWidget() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
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
                          heightFactor: 0.53,
                          child: Container(
                            // height: 300,
                            decoration: MyDecoration.radiusonlydecoration(),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  heightSpace20,
                                  Container(
                                    height: 4,
                                    width: 160,
                                    decoration: MyDecoration.simpledecoration(
                                        color: AppColors.greyprimarycolor),
                                  ),
                                  heightSpace20,
                                  Text(
                                    'Activity Details',
                                    style: BaseStyles.blackMedium16,
                                  ),
                                  heightSpace10,
                                  const Divider(
                                    thickness: 0.3,
                                    height: 25,
                                  ),
                                  Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Contact client',
                                                style: BaseStyles.blackMedium16,
                                              ),
                                              Text(
                                                'Created By : Ihsan Ahmad Nainy, Sept. 5...',
                                                style: BaseStyles.blacNormal14,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 5),
                                          decoration: decorationbox2(
                                              color: AppColors.primaryColor2
                                                  .withOpacity(0.2),
                                              radius: 30.0),
                                          child: Text(
                                            'Open',
                                            style: BaseStyles.greenMedium11,
                                          ),
                                        )
                                      ]),
                                  heightSpace10,
                                  const Divider(
                                    thickness: 0.3,
                                    height: 25,
                                  ),
                                  Row(
                                    children: [
                                      widthSpace10,
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Activity Type',
                                              style:
                                                  BaseStyles.lightblackMedium12,
                                            ),
                                            heightSpace5,
                                            Text(
                                              'New Appointment',
                                              style: BaseStyles.blacNormal14,
                                            )
                                          ],
                                        ),
                                      ),
                                      // widthSpace20,
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Assigned To	',
                                              style:
                                                  BaseStyles.lightblackMedium12,
                                            ),
                                            heightSpace5,
                                            Text(
                                              'Ihsan Ahmad Nainy',
                                              style: BaseStyles.blacNormal14,
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Start Date & Time	',
                                              style:
                                                  BaseStyles.lightblackMedium12,
                                            ),
                                            heightSpace5,
                                            Text(
                                              'Sept. 5, 2022, midnight	',
                                              style: BaseStyles.blacNormal14,
                                            )
                                          ],
                                        ),
                                      ),
                                      // widthSpace50,
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'End Date & Time	',
                                              style:
                                                  BaseStyles.lightblackMedium12,
                                            ),
                                            heightSpace5,
                                            Text(
                                              'Sept. 5, 2022, midnight	',
                                              style: BaseStyles.blacNormal14,
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  // heightSpace10,
                                  const Divider(
                                    thickness: 0.3,
                                    height: 25,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Last Modified : Sept. 5, 2022, 10:48 AM',
                                        style: BaseStyles.lightblackMedium12,
                                      ),
                                    ),
                                  ),
                                  heightSpace30,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      mybuttons(
                                          border: Border.all(
                                              color: AppColors
                                                  .greyprimarycolor.shade200),
                                          width: 150.0,
                                          action: () {
                                            Get.back();
                                          },
                                          name: 'Delete',
                                          radius: 5.0,
                                          style: BaseStyles.blackMedium16,
                                          color: AppColors.whiteColor,
                                          height: 45.0),
                                      mybuttons(
                                          width: 150.0,
                                          action: () {
                                            Get.back();
                                          },
                                          name: 'Edit',
                                          radius: 5.0,
                                          color: AppColors.orangecolor,
                                          height: 45.0),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
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
                            Icon(
                              Icons.add_box_rounded,
                              color: AppColors.greyprimarycolor,
                              size: 18,
                            ),
                            widthSpace10,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Contact client',
                                    style: BaseStyles.blackMedium14,
                                  ),
                                  Text(
                                    'Created By : Ihsan Ahmad Nainy, Sept. 5...',
                                    style: BaseStyles.blacNormal14,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              decoration: decorationbox2(
                                  color:
                                      AppColors.primaryColor2.withOpacity(0.2),
                                  radius: 30.0),
                              child: Text(
                                'Open',
                                style: BaseStyles.greenMedium11,
                              ),
                            )
                          ]),
                      heightSpace10,

                      Divider(
                        thickness: 0.5,
                      ),
                      // heightSpace10,
                    ],
                  ),
                ),
              ),
              // heightSpace10
            ],
          );
        });
  }

////// job details////////////////////////////////
  Widget leadDetails({title, title2}) {
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Client Details',
                      style: BaseStyles.blackMedium14,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          MyImages.edit,
                          height: 16,
                          width: 16,
                        )),
                  ],
                ),
              ),
              Divider(
                thickness: 0.5,
              ),
              heightSpace5,
              heightSpace5,
              Row(
                children: [
                  widthSpace10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lead Title',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'Raman',
                          style: BaseStyles.blacNormal14,
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
                          'Lead Owner',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'Raman Arora',
                          style: BaseStyles.blacNormal14,
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
                          'Name',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'Raman',
                          style: BaseStyles.blacNormal14,
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
                          'Email',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'Raman@gmail.com',
                          style: BaseStyles.blacNormal14,
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
                          'Phone',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          '+91 9999999999',
                          style: BaseStyles.blacNormal14,
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
                          'Company',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'Oodles Technoloies',
                          style: BaseStyles.blacNormal14,
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
                          'Website',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'No Info',
                          style: BaseStyles.blacNormal14,
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
                          'Lead Source',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'Advertisment',
                          style: BaseStyles.blacNormal14,
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
                          'Lead Status',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'Contacted',
                          style: BaseStyles.blacNormal14,
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
                          'Industry',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'No Info',
                          style: BaseStyles.blacNormal14,
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
                          'Company Size',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'No Info',
                          style: BaseStyles.blacNormal14,
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
                          'Street',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'No Info',
                          style: BaseStyles.blacNormal14,
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
                          'City',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'No Info',
                          style: BaseStyles.blacNormal14,
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
                          'State',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'No Info',
                          style: BaseStyles.blacNormal14,
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
                          'Zip Code',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'No Info',
                          style: BaseStyles.blacNormal14,
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
                          'Country',
                          style: BaseStyles.lightblackMedium12,
                        ),
                        heightSpace5,
                        Text(
                          'No Info',
                          style: BaseStyles.blacNormal14,
                        )
                      ],
                    ),
                  )
                ],
              ),
              heightSpace10,
            ],
          ),
        ));
  }

/////// designation////////////////////////////////////////////////////////////////
  Widget Overview({padding}) {
    return Container(
      color: AppColors.whiteColor,
      width: Get.width,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(10.0),
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
                      backgroundColor: Color(0xffECF7F3),
                      child: Icon(
                        Icons.phone,
                        size: 20,
                        color: AppColors.primaryColor,
                      ),
                      radius: 17,
                    ),
                    widthSpace10,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone',
                          style: BaseStyles.grey3medium12,
                        ),
                        Text(
                          '+60 13479739479',
                          style: BaseStyles.blacNormal14,
                        ),
                        heightSpace5,
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.copy,
                            size: 16, color: AppColors.greyprimarycolor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            heightSpace5,
            Divider(
              thickness: 0.5,
            ),
            heightSpace5,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xffECF7F3),
                      child: Icon(
                        Icons.email,
                        size: 20,
                        color: AppColors.primaryColor,
                      ),
                      radius: 17,
                    ),
                    widthSpace10,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: BaseStyles.grey3medium12,
                        ),
                        Text(
                          'raman@gmail.com',
                          style: BaseStyles.blacNormal14,
                        ),
                        heightSpace5,
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.copy,
                            size: 16, color: AppColors.greyprimarycolor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget leadbutton(context) {
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
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
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
                                heightFactor: 0.9,
                                child: Container(
                                  // height: 300,
                                  decoration:
                                      MyDecoration.radiusonlydecoration(),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        heightSpace20,
                                        Container(
                                          height: 4,
                                          width: 160,
                                          decoration:
                                              MyDecoration.simpledecoration(
                                                  color: AppColors
                                                      .greyprimarycolor),
                                        ),
                                        heightSpace20,
                                        Text(
                                          'Convert Lead',
                                          style: BaseStyles.blackMedium16,
                                        ),
                                        heightSpace10,
                                        const Divider(
                                          thickness: 0.3,
                                          height: 25,
                                        ),
                                        textwidget(
                                            name: 'Lead Name * ',
                                            text: 'Select'),
                                        const Divider(
                                          thickness: 0.3,
                                          height: 25,
                                        ),
                                        textwidget(
                                            name: 'Account * ', text: 'Select'),
                                        const Divider(
                                          thickness: 0.3,
                                          height: 25,
                                        ),
                                        textwidget2(
                                            name: 'Contact * ', text: 'Select'),
                                        const Divider(
                                          thickness: 0.3,
                                          height: 25,
                                        ),
                                        textwidget(
                                            name: 'Assign To * ',
                                            text: 'Select'),
                                        const Divider(
                                          thickness: 0.3,
                                          height: 25,
                                        ),
                                        textwidget(
                                            name: 'Opportunity Name * ',
                                            text: 'Select'),
                                        const Divider(
                                          thickness: 0.3,
                                          height: 25,
                                        ),
                                        Container(
                                          // color: AppColors.blackcolor,
                                          child: Row(
                                            children: [
                                              Theme(
                                                  data: Theme.of(context)
                                                      .copyWith(
                                                          unselectedWidgetColor:
                                                              AppColors
                                                                  .greycolor2),
                                                  child: SizedBox(
                                                      height: 20.0,
                                                      width: 20.0,
                                                      child: Checkbox(
                                                        materialTapTargetSize:
                                                            MaterialTapTargetSize
                                                                .shrinkWrap,
                                                        activeColor: AppColors
                                                            .primaryColor,
                                                        // checkColor: AppColors.secondary2Color,
                                                        value: controller
                                                            .agree.value,
                                                        onChanged: (value) {
                                                          controller
                                                                  .agree.value =
                                                              value ?? false;
                                                        },
                                                      ))),
                                              widthSpace10,
                                              Expanded(
                                                child: Text(
                                                  'Do not create a new Opportunity name upon conversion',
                                                  style:
                                                      BaseStyles.blacNormal14,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        heightSpace30,
                                        mybuttons(
                                            action: () {
                                              Get.back();
                                            },
                                            name: 'Submit',
                                            radius: 5.0,
                                            color: AppColors.orangecolor,
                                            height: 45.0),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 150,
                        decoration: decorationbox2(
                            radius: 5.0,
                            color: AppColors.orangecolor.withOpacity(0.2)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person_add_alt,
                              color: AppColors.orangecolor,
                              size: 16,
                            ),
                            widthSpace5,
                            Text(
                              'Assign',
                              style: BaseStyles.orangenormal14,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  widthSpace20,
                  Expanded(
                    child: GestureDetector(
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
                                heightFactor: 0.8,
                                child: Container(
                                  // height: 300,
                                  decoration:
                                      MyDecoration.radiusonlydecoration(),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        heightSpace20,
                                        Container(
                                          height: 4,
                                          width: 160,
                                          decoration:
                                              MyDecoration.simpledecoration(
                                                  color: AppColors
                                                      .greyprimarycolor),
                                        ),
                                        heightSpace20,
                                        Text(
                                          'Assign to',
                                          style: BaseStyles.blackMedium16,
                                        ),
                                        heightSpace10,
                                        ////
                                        mysearch(
                                            width: Get.width,
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
                                                  horizontalTitleGap: 2.0,
                                                  dense: true,
                                                  contentPadding:
                                                      const EdgeInsets.only(
                                                          left: 15),
                                                  title: Text(
                                                    'Nikita Sharma',
                                                    style:
                                                        BaseStyles.blacNormal14,
                                                  ),
                                                  subtitle: Text(
                                                    'nikita@gmail.com',
                                                    style: BaseStyles
                                                        .grey2Medium12,
                                                  ),
                                                  trailing: Theme(
                                                      data: Theme.of(context).copyWith(
                                                          unselectedWidgetColor:
                                                              AppColors
                                                                  .greyprimarycolor
                                                                  .shade400),
                                                      child: SizedBox(
                                                          height: 20.0,
                                                          width: 20.0,
                                                          child: Checkbox(
                                                            materialTapTargetSize:
                                                                MaterialTapTargetSize
                                                                    .shrinkWrap,
                                                            activeColor: AppColors
                                                                .primaryColor,
                                                            // checkColor: AppColors.secondary2Color,
                                                            value: controller
                                                                .agree.value,
                                                            onChanged: (value) {
                                                              controller.agree
                                                                      .value =
                                                                  value ??
                                                                      false;
                                                            },
                                                          ))),
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
                                            name: 'Assign',
                                            radius: 5.0,
                                            color: AppColors.orangecolor,
                                            height: 45.0),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 150,
                        decoration: decorationbox2(
                            radius: 5.0,
                            color: AppColors.primaryColor.withOpacity(0.2)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.refresh,
                              color: AppColors.primaryColor,
                              size: 16,
                            ),
                            widthSpace5,
                            Text(
                              'Convert',
                              style: BaseStyles.greennormal14,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }

//   //////////////////// job name list widget ui////////////////////////////////
  Widget _item() {
    return Container(
      height: 50,
      width: Get.width,
      color: AppColors.whiteColor,
      margin: EdgeInsets.zero,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: controller.clientslist.length,
          itemBuilder: (BuildContext context, int index) {
            return Obx(
              (() => Row(
                    children: [
                      widthSpace10,
                      GestureDetector(
                        onTap: () {
                          controller.selectname.value =
                              controller.clientslist[index]['name'].toString();
                        },
                        child: Container(
                          height: 30,
                          // width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: controller.selectname.value ==
                                      controller.clientslist[index]['name']
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
                              controller.clientslist[index]['value'] == ""
                                  ? controller.clientslist[index]['name']
                                      .toString()
                                  : "${controller.clientslist[index]['name'].toString()}",
                              style: controller.selectname.value ==
                                      controller.clientslist[index]['name']
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
}
