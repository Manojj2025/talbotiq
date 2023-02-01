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
import '../controllers/clientDetail_controller.dart';
import 'addrecruiter_view.dart';

class ClientsdetailView extends GetView<ClientsdetailController> {
  const ClientsdetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ClientsdetailController());
    return Scaffold(
        appBar: myappbar2(
            title: HomeName.clientdetail, show: true, show2: Container()),
        body: Obx(
          () => ListView(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(const ClientsdetailView());
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
                                        'Tech Mahindra',
                                        style: BaseStyles.blackMedium16,
                                      ),
                                      // widthSpace5,
                                      // Container(
                                      //   padding: EdgeInsets.symmetric(
                                      //       horizontal: 8, vertical: 3),
                                      //   decoration: decorationbox2(
                                      //       color: AppColors.primaryColor2
                                      //           .withOpacity(0.2),
                                      //       radius: 30.0),
                                      //   child: Text(
                                      //     '6 new',
                                      //     style: BaseStyles.greenMedium11,
                                      //   ),
                                      // )
                                    ],
                                  ),
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
                                            style:
                                                BaseStyles.lightblackMedium12,
                                          )
                                        ],
                                      ),
                                      widthSpace20,
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_month_sharp,
                                            size: 16,
                                            color: AppColors.greyprimarycolor,
                                          ),
                                          widthSpace3,
                                          Text(
                                            '21 Aug',
                                            style:
                                                BaseStyles.lightblackMedium12,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  //   Text(
                                  //     'Tech Mahindra',
                                  //     style: BaseStyles.blackMedium12,
                                  //   )
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
                                    child: Image.asset(
                                      MyImages.edit,
                                      height: 16,
                                      width: 16,
                                    )),
                                widthSpace10,
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.bookmark,
                                    size: 20,
                                    color: AppColors.yellowcolor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      heightSpace10,
                      // heightSpace5,

                      // heightSpace5,
                      Divider(
                        thickness: 0.5,
                      ),
                      // heightSpace10,
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.person_outline_sharp,
                                  size: 16,
                                  color: AppColors.greyprimarycolor,
                                ),
                                widthSpace3,
                                Text(
                                  'Recruiter:',
                                  style: BaseStyles.lightblacklarge12,
                                ),
                                Text(
                                  'James Gordon',
                                  style: BaseStyles.lightblackMedium12,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Lead',
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
              heightSpace10,
              _jobitem(),
              heightSpace10,
              controller.selectname.value == 'Overview'
                  ? Column(
                      children: [
                        Overview(),
                        heightSpace10,
                        jobDescription(),
                        heightSpace10,
                        jobDetails()
                      ],
                    )
                  : controller.selectname.value == 'Notes'
                      ? notes()
                      : controller.selectname.value == 'Settings'
                          ? settings()
                          : jobapplication()
            ],
          ),
        ));
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
                    GestureDetector(
                      onTap: () {
                        // print('kk');
                        // Get.to(AddrecruiterView());
                      },
                      child: Container(
                        child: Row(
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
                      ),
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
                                  color: AppColors.yellowcolor,
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
  Widget notes() {
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
                Row(
                  children: [
                    Text(
                      'Notes',
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
                    widthSpace20,
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
            Divider(
              thickness: 0.5,
            ),
            _listnotesWidget()
          ],
        ),
      ),
    );
  }

  //////////////////// job list widget ui////////////////////////////////
  _listnotesWidget() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                color: AppColors.whiteColor,
                child: Column(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'Having experience of more than 5 years in UI development for Web Application and Mobile applciations.',
                              style: BaseStyles.blacNormal14,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.more_vert_outlined,
                              size: 18,
                              color: AppColors.greyprimarycolor,
                            ),
                          )
                        ]),
                    heightSpace10,
                    heightSpace5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today_outlined,
                              size: 16,
                              color: AppColors.greyprimarycolor,
                            ),
                            widthSpace3,
                            Text(
                              '21 Aug 2022',
                              style: BaseStyles.lightblackMedium12,
                            )
                          ],
                        ),
                        widthSpace10,
                        Row(
                          children: [
                            Icon(
                              Icons.person_outline,
                              color: AppColors.greyprimarycolor,
                              size: 18,
                            ),
                            widthSpace3,
                            Text(
                              'By Recruiter',
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
                  ],
                ),
              ),
              // heightSpace10
            ],
          );
        });
  }

  Widget jobapplication() {
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
                Row(
                  children: [
                    Text(
                      'Job',
                      style: BaseStyles.blackMedium14,
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
                    widthSpace10,
                  ],
                ),
                // widthSpace10
              ],
            ),
            Divider(
              thickness: 0.5,
            ),
            _listWidget()
          ],
        ),
      ),
    );
  }

  //////////////////// job list widget ui////////////////////////////////
  _listWidget() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                                  style: BaseStyles.lightblackMedium12,
                                )
                              ],
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
                        widthSpace10,
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
                      ],
                    ),
                    heightSpace5,
                    Divider(
                      thickness: 0.5,
                    ),
                    // heightSpace10,
                  ],
                ),
              ),
              heightSpace10
            ],
          );
        });
  }

////// job details////////////////////////////////
  Widget jobDetails({title, title2}) {
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
                      'Contact Information',
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
              jobdetails2(
                  title: title ?? 'Address',
                  title2: title2 ?? 'IT Park, Sec 104'),
              heightSpace10,
              jobdetails2(title: title ?? 'Country', title2: title2 ?? 'India'),
              heightSpace10,
              jobdetails2(title: title ?? 'State', title2: 'Haryana'),
              heightSpace10,
              jobdetails2(title: title ?? 'City', title2: title2 ?? 'Gurugram'),
              heightSpace10,
              jobdetails2(
                  title: title ?? 'Pin Code', title2: title2 ?? '122006'),
              heightSpace10,
              jobdetails2(
                  title: title ?? 'Landmark', title2: title2 ?? 'Near School'),
              heightSpace10,
              jobdetails2(
                  title: title ?? 'Phone Number',
                  title2: title2 ?? '9199999 999999'),
              heightSpace10,
              jobdetails2(
                  title: title ?? 'Email',
                  title2: title2 ?? 'info@techmahindra.com'),
              heightSpace10,
              jobdetails2(
                  title: title ?? 'Website',
                  title2: title2 ?? 'www.techmahindra.com'),
              heightSpace10,
            ],
          ),
        ));
  }

  Row jobdetails2({icon, title, title2, iconcolor, width}) {
    return Row(
      children: [
        SizedBox(
          width: width ?? Get.width * 0.26,
          child: Text(
            '$title:',
            style: BaseStyles.grey2normal14,
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

/////// designation////////////////////////////////////////////////////////////////
  Widget Overview({padding}) {
    return Container(
      color: AppColors.whiteColor,
      width: Get.width,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(10.0),
        child: Column(
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
                        'Client Name',
                        style: BaseStyles.lightblackMedium12,
                      ),
                      heightSpace5,
                      Text(
                        'Tech Mahindra',
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
                        'Client ID',
                        style: BaseStyles.lightblackMedium12,
                      ),
                      heightSpace5,
                      Text(
                        'ASDFSDGSDFG4534',
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
                        '250+ emp..',
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
                        'Departments',
                        style: BaseStyles.lightblackMedium12,
                      ),
                      heightSpace5,
                      Text(
                        'Operation',
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
                        'GST',
                        style: BaseStyles.lightblackMedium12,
                      ),
                      heightSpace5,
                      Text(
                        '12324',
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
                        'Created',
                        style: BaseStyles.lightblackMedium12,
                      ),
                      heightSpace5,
                      Text(
                        '18th Feb 2023',
                        style: BaseStyles.blacNormal14,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget jobDescription() {
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
                      'About',
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
              ReadMoreText(
                "We are looking for a Java developer responsible for building Java applications with Springboot Framework. This includes anything between complex groups of back-end services and their client-end (desktop and mobile) counterparts. Your primary responsibility",
                trimLines: 4,
                style: BaseStyles.blacNormal14,
                colorClickableText: AppColors.primaryColor,
                trimMode: TrimMode.Line,
                trimCollapsedText: '...Show more',
                trimExpandedText: ' show less',
              ),
            ],
          ),
        ));
  }

//   //////////////////// job name list widget ui////////////////////////////////
  Widget _jobitem() {
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
