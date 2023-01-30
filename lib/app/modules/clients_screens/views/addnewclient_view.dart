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
import '../controllers/clientNewtask_controller.dart';
import 'addrecruiter_view.dart';
import 'clientAdded.dart';

class AddNewClientView extends GetView<ClientNewTaskController> {
  const AddNewClientView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ClientNewTaskController());
    return SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(100),
              child: Column(children: [
                Container(
                  height: 55,
                  color: AppColors.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Icon(
                            Icons.arrow_back,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        widthSpace10,
                        Obx(
                          () => Text(
                            controller.index.value < 0
                                ? 'Add New Client'
                                : controller.index.value < 1
                                    ? 'Contact Informations'
                                    : 'Settings',
                            style: BaseStyles.whiteMedium16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: AppColors.primaryColor3,
                  height: 45,
                  child: Obx(
                    () => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.keyboard_arrow_left_sharp,
                              size: 25,
                              color: controller.index.value < 2
                                  ? AppColors.greyprimarycolor.withOpacity(0.6)
                                  : AppColors.whiteColor,
                            ),
                            Expanded(
                              child: TimelineNode(
                                direction: Axis.horizontal,
                                indicator: GestureDetector(
                                  onTap: () {
                                    controller.pageController.animateToPage(0,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.ease);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(7),
                                    decoration: BoxDecoration(
                                      color: controller.index.value >= 0
                                          ? AppColors.primaryColor
                                          : AppColors.greyprimarycolor.shade300,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      MyImages.form,
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                ),
                                endConnector: SolidLineConnector(
                                    // thickness: 3,
                                    color: AppColors.greyprimarycolor.shade300),
                              ),
                            ),
                            Expanded(
                              child: TimelineNode(
                                direction: Axis.horizontal,
                                indicator: GestureDetector(
                                  onTap: () {
                                    controller.pageController.animateToPage(0,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.ease);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(7),
                                    decoration: BoxDecoration(
                                      color: controller.index.value >= 1
                                          ? AppColors.primaryColor
                                          : AppColors.greyprimarycolor.shade300,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      MyImages.file,
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                ),
                                startConnector: SolidLineConnector(
                                    // thickness: 3,
                                    color: AppColors.greyprimarycolor.shade300),
                                endConnector: SolidLineConnector(
                                    // thickness: 3,
                                    color: AppColors.greyprimarycolor.shade300),
                              ),
                            ),
                            // Expanded(
                            //   child: TimelineNode(
                            //     direction: Axis.horizontal,
                            //     indicator: GestureDetector(
                            //       onTap: () {
                            //         controller.pageController.animateToPage(1,
                            //             duration:
                            //                 const Duration(milliseconds: 500),
                            //             curve: Curves.ease);
                            //       },
                            //       child: Container(
                            //         padding: const EdgeInsets.all(7),
                            //         decoration: BoxDecoration(
                            //           color: controller.index.value >= 2
                            //               ? AppColors.primaryColor
                            //               : AppColors.greyprimarycolor.shade300,
                            //           shape: BoxShape.circle,
                            //         ),
                            //         child: Image.asset(
                            //           MyImages.on,
                            //           height: 20,
                            //           width: 20,
                            //         ),
                            //       ),
                            //     ),
                            //     startConnector: SolidLineConnector(
                            //         // thickness: 3,
                            //         color: AppColors.greyprimarycolor.shade300),
                            //     endConnector: SolidLineConnector(
                            //         // thickness: 3,
                            //         color: AppColors.greyprimarycolor.shade300),
                            //   ),
                            // ),
                            Expanded(
                              child: TimelineNode(
                                direction: Axis.horizontal,
                                indicator: GestureDetector(
                                  onTap: () {
                                    controller.pageController.animateToPage(2,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.ease);
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: controller.index.value >= 2
                                            ? AppColors.primaryColor
                                            : AppColors
                                                .greyprimarycolor.shade300,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.settings,
                                        size: 20,
                                        color: AppColors.whiteColor,
                                      )),
                                ),
                                startConnector: SolidLineConnector(
                                    // thickness: 3,
                                    color: AppColors.greyprimarycolor.shade300),
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_sharp,
                              color: AppColors.whiteColor,
                              size: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            body: PageView(
              controller: controller.pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (int index) {
                controller.index.value = index;
              },
              children: [
                Obx(() => Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              // heightSpace10,
                              controller.index.value == 0
                                  ? Expanded(
                                      child: Container(
                                        width: Get.width,
                                        color: AppColors.whiteColor,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10.0,
                                            right: 10.0,
                                            top: 10.0,
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                textwidget(
                                                    name: 'Client Name *',
                                                    text: 'Enter'),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget(
                                                    name: 'Client ID',
                                                    text: 'Enter'),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget2(
                                                    name: 'Industry *',
                                                    text: 'Select',
                                                    onTap: () {
                                                      select(context);
                                                    }),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget2(
                                                    name:
                                                        'Company Size(num of employes)*',
                                                    text: 'Select'),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget2(
                                                    name:
                                                        'Select Departments *',
                                                    text: 'Select'),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget(
                                                    controller: controller
                                                        .descriptionstext,
                                                    readonly: true,
                                                    onTap: () {},
                                                    minline: 8,
                                                    maxline: 8,
                                                    name: 'Job Description*',
                                                    text: 'Enter'),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                textwidget(
                                                    name: 'GST *',
                                                    text: 'Enter'),
                                                const Divider(
                                                  thickness: 0.3,
                                                  height: 25,
                                                ),
                                                Text(
                                                  'Upload Logo',
                                                  style:
                                                      BaseStyles.grey1Medium14,
                                                ),
                                                heightSpace5,
                                                Image.asset(
                                                    'assets/image/logoupload.png'),
                                                // heightSpace50,
                                                heightSpace30,
                                                mybuttons(
                                                    action: () {
                                                      controller.index.value =
                                                          1;
                                                      print('object');
                                                    },
                                                    name: 'Next',
                                                    color:
                                                        AppColors.orangecolor,
                                                    height: 40.0)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  : controller.index.value == 1
                                      ? Expanded(
                                          child: Container(
                                            width: Get.width,
                                            color: AppColors.whiteColor,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.0,
                                                top: 10.0,
                                              ),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    textwidget(
                                                        name: 'Address *',
                                                        text: 'Enter'),
                                                    const Divider(
                                                      thickness: 0.3,
                                                      height: 25,
                                                    ),
                                                    textwidget2(
                                                        name: 'Country *',
                                                        text: 'Select',
                                                        onTap: () {
                                                          select(context);
                                                        }),
                                                    const Divider(
                                                      thickness: 0.3,
                                                      height: 25,
                                                    ),
                                                    textwidget2(
                                                        name: 'State *',
                                                        text: 'Select',
                                                        onTap: () {
                                                          select(context);
                                                        }),
                                                    const Divider(
                                                      thickness: 0.3,
                                                      height: 25,
                                                    ),
                                                    textwidget2(
                                                        name: 'City *',
                                                        text: 'Select',
                                                        onTap: () {
                                                          select(context);
                                                        }),
                                                    const Divider(
                                                      thickness: 0.3,
                                                      height: 25,
                                                    ),
                                                    textwidget(
                                                        name: 'Pincode *',
                                                        text: 'Enter',
                                                        onTap: () {
                                                          select(context);
                                                        }),
                                                    const Divider(
                                                      thickness: 0.3,
                                                      height: 25,
                                                    ),
                                                    textwidget(
                                                        name: 'Landmark *',
                                                        text: 'Enter',
                                                        onTap: () {
                                                          select(context);
                                                        }),
                                                    const Divider(
                                                      thickness: 0.3,
                                                      height: 25,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Phone *",
                                                          style: BaseStyles
                                                              .grey1Medium14,
                                                        ),
                                                        heightSpace5,
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            singlefiled(
                                                              color: AppColors
                                                                  .greyprimarycolor
                                                                  .shade300,
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
                                                    textwidget(
                                                        name: 'Website *',
                                                        text: 'Enter'),
                                                    const Divider(
                                                      thickness: 0.3,
                                                      height: 25,
                                                    ),
                                                    textwidget(
                                                        name: 'Email *',
                                                        text: 'Enter'),
                                                    const Divider(
                                                      thickness: 0.3,
                                                      height: 25,
                                                    ),
                                                    mybuttons(
                                                        action: () {
                                                          controller
                                                              .index.value = 2;
                                                          print('object');
                                                        },
                                                        name: 'Next',
                                                        color: AppColors
                                                            .orangecolor,
                                                        height: 40.0)
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      : Expanded(
                                          child: Column(
                                            children: [
                                              Container(
                                                color: AppColors.whiteColor,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Status & Visibility',
                                                        style: BaseStyles
                                                            .blackMedium14,
                                                      ),
                                                      const Divider(
                                                        thickness: 0.3,
                                                        height: 25,
                                                      ),
                                                      textwidget2(
                                                          name:
                                                              'Select Client Status * ',
                                                          text: 'Select'),
                                                      const Divider(
                                                        thickness: 0.3,
                                                        height: 25,
                                                      ),
                                                      textwidget2(
                                                          name: 'Visibility *',
                                                          text: 'Select'),
                                                      heightSpace5,
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Column(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        heightSpace5,
                                                        Container(
                                                          width: Get.width,
                                                          color: AppColors
                                                              .whiteColor,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              left: 10.0,
                                                              right: 10.0,
                                                              top: 10.0,
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Text(
                                                                          'Recruiters',
                                                                          style:
                                                                              BaseStyles.blackMedium16,
                                                                        )
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .add,
                                                                          color:
                                                                              AppColors.orangecolor,
                                                                          size:
                                                                              16,
                                                                        ),
                                                                        // widthSpace20,
                                                                        widthSpace3,
                                                                        Text(
                                                                          'Add',
                                                                          style:
                                                                              BaseStyles.orangeMedium14,
                                                                        ),
                                                                        widthSpace10,
                                                                      ],
                                                                    ),
                                                                    // widthSpace10
                                                                  ],
                                                                ),
                                                                heightSpace10,
                                                                Divider(
                                                                  thickness:
                                                                      0.5,
                                                                ),
                                                                Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              'Aniket Sharma',
                                                                              style: BaseStyles.blackMedium16,
                                                                            ),
                                                                            // widthSpace5,
                                                                            heightSpace5,
                                                                            Text(
                                                                              'James@gmail.com',
                                                                              style: BaseStyles.lightblackMedium12,
                                                                            ),
                                                                            heightSpace5,
                                                                            Row(
                                                                              children: [
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
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    GestureDetector(
                                                                        onTap:
                                                                            () {},
                                                                        child: Image
                                                                            .asset(
                                                                          MyImages
                                                                              .edit,
                                                                          height:
                                                                              16,
                                                                          width:
                                                                              16,
                                                                        )),
                                                                  ],
                                                                ),
                                                                heightSpace10,
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    heightSpace5,
                                                    Expanded(
                                                      child: Container(
                                                          width: Get.width,
                                                          color: AppColors
                                                              .whiteColor,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              left: 10.0,
                                                              right: 10.0,
                                                              top: 10.0,
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Add Account Manager',
                                                                  style: BaseStyles
                                                                      .blackMedium16,
                                                                ),
                                                                heightSpace10,
                                                                Divider(
                                                                  thickness:
                                                                      0.5,
                                                                ),
                                                                textwidget2(
                                                                    name:
                                                                        'Select Account Manager * ',
                                                                    text:
                                                                        'Select'),
                                                                Expanded(
                                                                    child:
                                                                        Container()),
                                                                // SizedBox(
                                                                //   height:
                                                                //       Get.height *
                                                                //           0.14,
                                                                // ),
                                                                const Divider(
                                                                  thickness:
                                                                      0.3,
                                                                  height: 25,
                                                                ),
                                                                mybuttons(
                                                                    action: () {
                                                                      Get.to(
                                                                          ClientAddedView());
                                                                      // controller
                                                                      //     .index
                                                                      //     .value = ;
                                                                      print(
                                                                          'object');
                                                                    },
                                                                    name:
                                                                        'Next',
                                                                    color: AppColors
                                                                        .orangecolor,
                                                                    height:
                                                                        40.0)
                                                              ],
                                                            ),
                                                          )),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            )));
  }

  //////////////select department////////////////////////////////////////////////////////////////

  select(context) {
    return showModalBottomSheet(
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
            heightFactor: 0.5,
            child: Container(
              // height: 300,
              decoration: MyDecoration.radiusonlydecoration(),
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
                    "Select Department",
                    style: BaseStyles.blackMedium16,
                  ),
                  heightSpace10,
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.list.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.selected.value = index;
                              },
                              child: ListTile(
                                horizontalTitleGap: 0.0,
                                dense: true,
                                title: Text(
                                  controller.list[index],
                                  style: BaseStyles.blacNormal14,
                                ),
                                leading: Obx(
                                  () => Radio(
                                    activeColor: AppColors.primaryColor,
                                    visualDensity: const VisualDensity(
                                        horizontal: -0.4, vertical: -0.4),
                                    value: controller.selected.value,
                                    groupValue: index,
                                    onChanged: (value) {
                                      controller.selected.value = index;
                                      // if (controller
                                      //         .selected
                                      //         .value ==
                                      //     index) {
                                      //   controller
                                      //           .selectaddressdata =
                                      //       data;
                                      //   showToast('Selected');
                                      //   // controller.box.write('addresstype',
                                      //   //     controller.selectaddressdata!.type);
                                      //   print(controller
                                      //       .selectaddressdata);
                                      // } else {
                                      //   // controller.selectaddressdata;
                                      // }
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Divider(
                              height: 0.5,
                              thickness: 0.3,
                            ),
                          ],
                        );
                      }),
                ],
              ),
            ),
          );
        });
  }
}
