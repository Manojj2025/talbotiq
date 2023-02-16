import 'package:Talbotiq/app/modules/Oppurtunity_screen/controllers/oppurtunity_controller.dart';
import 'package:Talbotiq/app/modules/lead_screens/controllers/lead_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:Talbotiq/app/widgets/decoration.dart';

import '../../../constants/values.dart';
import '../../../widgets/filters.dart';
import '../../lead_screens/views/leadNewtask_view.dart';
import 'oppurtunityNewtask_view.dart';
import 'oppurtunitydetail_view.dart';

class OppurtunityView extends GetView<OppurtunityController> {
  const OppurtunityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => OppurtunityController());
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 30,
          title: Text(
            HomeName.oppurtunity,
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
                  InkWell(
                    onTap: () {
                      Get.to(OppurtunityNewTaskView());
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
                    InkWell(
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
                    InkWell(
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
          itemCount: controller.clientlist.length,
          itemBuilder: (BuildContext context, int index) {
            return Obx(
              (() => Row(
                    children: [
                      widthSpace10,
                      InkWell(
                        onTap: () {
                          controller.selectname.value =
                              controller.clientlist[index]['name'].toString();
                        },
                        child: Container(
                          height: 30,
                          // width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: controller.selectname.value ==
                                      controller.clientlist[index]['name']
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
                              "${controller.clientlist[index]['name'].toString()} (${controller.clientlist[index]['value'].toString()})",
                              style: controller.selectname.value ==
                                      controller.clientlist[index]['name']
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
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            controller.save.clear();
            for (var i = 0; i < 10; i++) {
              controller.save.add(false);
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Get.to(const OppurtunitydetailView());
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
                                      'assets/image/4.png',
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
                                    // Row(
                                    //   mainAxisAlignment:
                                    //       MainAxisAlignment.start,
                                    //   children: [
                                    //     Row(
                                    //       children: [
                                    //         Icon(
                                    //           Icons.location_on_outlined,
                                    //           color: AppColors.greyprimarycolor,
                                    //           size: 18,
                                    //         ),
                                    //         widthSpace3,
                                    //         Text(
                                    //           'New Delhi',
                                    //           style:
                                    //               BaseStyles.lightblackMedium12,
                                    //         )
                                    //       ],
                                    //     ),
                                    //     widthSpace20,
                                    //     Row(
                                    //       children: [
                                    //         Icon(
                                    //           Icons.calendar_month_sharp,
                                    //           size: 16,
                                    //           color: AppColors.greyprimarycolor,
                                    //         ),
                                    //         widthSpace3,
                                    //         Text(
                                    //           '21 Aug',
                                    //           style:
                                    //               BaseStyles.lightblackMedium12,
                                    //         )
                                    //       ],
                                    //     ),
                                    //   ],
                                    // ),
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
                              child: Obx(
                                () => Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        if (controller.save[index] == true) {
                                          controller.save[index] = false;
                                        } else {
                                          controller.save[index] = true;
                                        }
                                      },
                                      child: Icon(
                                        controller.save[index] == true
                                            ? Icons.bookmark
                                            : Icons.bookmark_border_rounded,
                                        size: 16,
                                        color: controller.save[index] == true
                                            ? AppColors.yellowcolor
                                            : AppColors.greyprimarycolor,
                                      ),
                                    ),
                                    widthSpace10,
                                    IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(
                                            minWidth: 0, minHeight: 0),
                                        onPressed: () {
                                          jobedit(
                                            ontab: (value) {
                                              switch (value) {
                                                case 0:
                                                  Get.back();
                                                  Get.to(
                                                      OppurtunityNewTaskView());

                                                  break;
                                                default:
                                              }
                                            },
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
                              ),
                            )
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
                            widthSpace20,
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 16,
                                  color: AppColors.greyprimarycolor,
                                ),
                                widthSpace3,
                                Text(
                                  '+91 9939938938',
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
                                  'assets/image/4.png',
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
                                  ' Public Relations',
                                  style: BaseStyles.lightblackMedium12,
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/image/q.png',
                                      height: 15,
                                      width: 15,
                                      color: AppColors.primaryColor,
                                    ),
                                    widthSpace5,
                                    Text(
                                      'Qualified',
                                      style: BaseStyles.lightblackMedium12,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
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
