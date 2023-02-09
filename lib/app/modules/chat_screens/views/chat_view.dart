import 'package:Talbotiq/app/modules/chat_screens/controllers/chat_controller.dart';
import 'package:Talbotiq/app/modules/chat_screens/views/schedule_view.dart';
import 'package:Talbotiq/app/modules/task_screens/views/projectdetail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../constants/values.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/decoration.dart';
import '../../../widgets/filters.dart';
import '../../../widgets/textfiled.dart';
import 'chatdetails_view.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ChatController());
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 30,
          title: Text(
            HomeName.RecentChats,
            style: BaseStyles.whiteMedium16,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: AppColors.whiteColor,
                    size: 18,
                  ),
                  widthSpace10,
                  // widthSpace5,
                  GestureDetector(
                    onTap: () {
                      jobedit(
                        ontab: (value) {
                          switch (value) {
                            case 0:
                              Get.back();
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
                                      child: Obx(
                                        () => Container(
                                          // height: 300,
                                          decoration:
                                              MyDecoration.radiusonlydecoration(
                                                  tlradius: 25.0,
                                                  trradius: 25.0),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                heightSpace20,
                                                Align(
                                                  child: Container(
                                                    height: 4,
                                                    width: 160,
                                                    decoration: MyDecoration
                                                        .simpledecoration(
                                                            color: AppColors
                                                                .greyprimarycolor),
                                                  ),
                                                ),
                                                heightSpace20,
                                                Align(
                                                  child: Text(
                                                    'Start Meeting Now',
                                                    style: BaseStyles
                                                        .blackMedium16,
                                                  ),
                                                ),
                                                heightSpace20,
                                                Container(
                                                  decoration: decorationbox(
                                                      border: Border.all(
                                                          color: AppColors
                                                              .greyprimarycolor
                                                              .shade200),
                                                      radius: 5.0,
                                                      color: Color(0xffFAFAFA)),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Get link',
                                                          style: BaseStyles
                                                              .blackMedium14,
                                                        ),
                                                        heightSpace3,
                                                        Text(
                                                          'Anyone on the internet with this link can access',
                                                          style: BaseStyles
                                                              .grey3Normal12,
                                                        ),
                                                        heightSpace10,
                                                        Container(
                                                          decoration: decorationbox(
                                                              border: Border.all(
                                                                  color: AppColors
                                                                      .greyprimarycolor
                                                                      .shade200),
                                                              radius: 5.0,
                                                              color: Color(
                                                                  0xffFAFAFA)),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(10.0),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  'https://www.talbotiq.com/can/Nlf',
                                                                  style: BaseStyles
                                                                      .grey2normal14,
                                                                ),
                                                                Icon(
                                                                  Icons.copy,
                                                                  size: 20,
                                                                  color: AppColors
                                                                      .greycolor3,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        heightSpace10
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                heightSpace20,
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        controller.selectname
                                                            .value = 'Email';
                                                      },
                                                      child: Container(
                                                        height: 30,
                                                        width: Get.width * 0.45,
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                            color: controller
                                                                        .selectname
                                                                        .value ==
                                                                    'Email'
                                                                ? AppColors
                                                                    .primaryColor
                                                                : AppColors
                                                                    .whiteColor,
                                                            border: Border.all(
                                                                color: AppColors
                                                                    .greyprimarycolor,
                                                                width: 0.2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30)),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 10.0,
                                                                  right: 10.0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .email_outlined,
                                                                size: 20,
                                                                color: controller
                                                                            .selectname
                                                                            .value ==
                                                                        'Email'
                                                                    ? AppColors
                                                                        .whiteColor
                                                                    : AppColors
                                                                        .greycolor3,
                                                              ),
                                                              widthSpace10,
                                                              Text(
                                                                'Email',
                                                                style: controller
                                                                            .selectname
                                                                            .value ==
                                                                        'Email'
                                                                    ? BaseStyles
                                                                        .whitemedium14
                                                                    : BaseStyles
                                                                        .greyMedium14,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        controller.selectname
                                                            .value = 'WhatsApp';
                                                      },
                                                      child: Container(
                                                        height: 30,
                                                        width: Get.width * 0.45,
                                                        alignment:
                                                            Alignment.center,
                                                        decoration: BoxDecoration(
                                                            color: controller
                                                                        .selectname
                                                                        .value ==
                                                                    'WhatsApp'
                                                                ? AppColors
                                                                    .primaryColor
                                                                : AppColors
                                                                    .whiteColor,
                                                            border: Border.all(
                                                                color: AppColors
                                                                    .greyprimarycolor,
                                                                width: 0.2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30)),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 10.0,
                                                                  right: 10.0),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .whatsapp_outlined,
                                                                size: 20,
                                                                color: controller
                                                                            .selectname
                                                                            .value ==
                                                                        'WhatsApp'
                                                                    ? AppColors
                                                                        .whiteColor
                                                                    : AppColors
                                                                        .greycolor3,
                                                              ),
                                                              widthSpace10,
                                                              Text(
                                                                'WhatsApp',
                                                                style: controller
                                                                            .selectname.value ==
                                                                        'WhatsApp'
                                                                    ? BaseStyles
                                                                        .whitemedium14
                                                                    : BaseStyles
                                                                        .greyMedium14,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                heightSpace20,
                                                textfiled(
                                                  borderSidecolor: AppColors
                                                      .greyprimarycolor
                                                      .shade200,
                                                  fillColor:
                                                      AppColors.whiteColor,
                                                  eyeshow: true,
                                                  suffixIconcolor:
                                                      AppColors.yellowcolor,
                                                  suffixicon: Icons.add,
                                                  prifixshow: false,

                                                  maxline: 1,
                                                  // ontap: () {},
                                                  readonly: false,
                                                  text: controller.selectname
                                                              .value ==
                                                          'WhatsApp'
                                                      ? 'Add people or enter email'
                                                      : 'Enter Mobile or Name',
                                                  // height: 40.0,
                                                  // minline: 1,
                                                ),
                                                heightSpace10,
                                                Container(
                                                  decoration: decorationbox2(
                                                      radius: 30.0,
                                                      color: AppColors
                                                          .greyprimarycolor
                                                          .shade100),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          controller.selectname
                                                                      .value ==
                                                                  'WhatsApp'
                                                              ? 'Abhishek Sharma'
                                                              : '+919383838383',
                                                          style: BaseStyles
                                                              .blacNormal12,
                                                        ),
                                                        widthSpace5,
                                                        Icon(
                                                          Icons.close,
                                                          size: 16,
                                                          color: AppColors
                                                              .greycolor2,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                heightSpace20,
                                                textwidget(
                                                    borderSidecolor: AppColors
                                                        .greyprimarycolor
                                                        .shade200,
                                                    fillColor:
                                                        AppColors.whiteColor,
                                                    height: 150.0,
                                                    readonly: false,
                                                    onTap: () {},
                                                    minline: 8,
                                                    maxline: 8,
                                                    name: 'Message (Optional)',
                                                    text: 'Write'),
                                                heightSpace5,
                                                Expanded(child: Container()),
                                                mybuttons(
                                                    // style:
                                                    //     BaseStyles.grey2medium16,
                                                    name: 'Share',
                                                    color:
                                                        AppColors.orangecolor,
                                                    height: 45.0)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  });

                              break;
                            case 1:
                              Get.back();
                              Get.to(ScheduleView());
                              break;
                            default:
                          }
                        },
                        height: 0.18,
                        context: context,
                        controller: controller,
                        listname: controller.list2,
                        icon: controller.list2,
                      );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: AppColors.whiteColor,
                            size: 18,
                          ),
                          widthSpace5,
                          Text(
                            'New',
                            style: BaseStyles.whitebold14,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        body: Column(
          children: [
            _name(), heightSpace10,
            _chat()
            // _listWidget()
          ],
        ));
  }

  ////////////////////chat list widget ui////////////////////////////////
  _chat() {
    return Expanded(
      child: Container(
        width: Get.width,
        color: AppColors.whiteColor,
        margin: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(ChatdetailView());
                        },
                        child: Container(
                          width: Get.width,
                          child: Stack(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: AppColors.yellowcolor,
                                        radius: 16,
                                        child: Text(
                                          'R',
                                          style: BaseStyles.whitebold14,
                                        ),
                                      ),
                                      widthSpace10,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Raghav Chaudhary',
                                            style: BaseStyles.blackMedium16,
                                          ),
                                          heightSpace3,
                                          index == 2
                                              ? Text(
                                                  'You : Hi',
                                                  style:
                                                      BaseStyles.grey3Normal14,
                                                )
                                              : index == 4
                                                  ? Text(
                                                      'Are you available?',
                                                      style: BaseStyles
                                                          .grey3Normal14,
                                                    )
                                                  : Text(
                                                      'Hello Good morning',
                                                      style: BaseStyles
                                                          .greenNormal14,
                                                    )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: CircleAvatar(
                                      radius: 8,
                                      backgroundColor: AppColors.primaryColor,
                                      child: Text(
                                        '1',
                                        style: BaseStyles.whitenormal12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                  left: 22,
                                  top: 21,
                                  child: CircleAvatar(
                                      backgroundColor: AppColors.whiteColor,
                                      radius: 5,
                                      child: CircleAvatar(
                                        backgroundColor: AppColors.primaryColor,
                                        radius: 4,
                                      ))),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 0.3,
                        height: 25,
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }

  ////////////////////name list widget ui////////////////////////////////
  _name() {
    return Container(
      height: 50,
      width: Get.width,
      color: AppColors.whiteColor,
      margin: EdgeInsets.zero,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: controller.list.length,
          itemBuilder: (BuildContext context, int index) {
            return Obx(
              (() => Row(
                    children: [
                      widthSpace10,
                      GestureDetector(
                        onTap: () {
                          controller.jobselectname.value =
                              controller.list[index]['name'].toString();
                        },
                        child: Container(
                          height: 30,
                          // width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: controller.jobselectname.value ==
                                      controller.list[index]['name']
                                  ? AppColors.primaryColor
                                  : AppColors.whiteColor,
                              border: Border.all(
                                  color: AppColors.greyprimarycolor,
                                  width: 0.2),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Text(
                              "${controller.list[index]['name'].toString()}",
                              style: controller.jobselectname.value ==
                                      controller.list[index]['name']
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
