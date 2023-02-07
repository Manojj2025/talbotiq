import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:Talbotiq/app/widgets/decoration.dart';

import '../../../constants/values.dart';
import '../../../widgets/filters.dart';
import '../controllers/client_controller.dart';
import 'addnewclient_view.dart';
import 'clientDetail_view.dart';
import 'clientNewtask_view.dart';

class ClientView extends GetView<ClientController> {
  const ClientView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ClientController());
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 30,
          title: Text(
            HomeName.client,
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
                      Get.to(AddNewClientView());
                    },
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
          itemCount: controller.clientlist.length,
          itemBuilder: (BuildContext context, int index) {
            return Obx(
              (() => Row(
                    children: [
                      widthSpace10,
                      GestureDetector(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                              child: Obx(
                                () => Row(
                                  children: [
                                    GestureDetector(
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
                                        onPressed: () {
                                          jobedit(
                                            routename: ClientNewTaskView(),
                                            // ontap: Get.to(ClientNewTaskView()),
                                            // // Get.back();

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
                heightSpace10
              ],
            );
          }),
    );
  }
}
