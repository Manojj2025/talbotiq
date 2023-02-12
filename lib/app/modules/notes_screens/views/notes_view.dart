import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:Talbotiq/app/widgets/decoration.dart';

import '../../../constants/values.dart';
import '../../../widgets/filters.dart';
import '../controllers/notes_controller.dart';
import 'add_notes_view.dart';

class NotesView extends GetView<NotesController> {
  const NotesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => NotesController());
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 30,
          title: Text(
            HomeName.MyNotes,
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
                    onTap: () {},
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
                    InkWell(
                      onTap: () {
                        // filter(context, controller);
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
                        // sortby(context, controller);
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
            _listWidget()
          ],
        ));
  }

  //////////////////// list widget ui////////////////////////////////
  _listWidget() {
    return Expanded(
      child: Container(
        color: AppColors.whiteColor,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(AddnotesView());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            color: Color(0xffFFF7DB),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Note Heading',
                                                  style:
                                                      BaseStyles.blackMedium14,
                                                ),
                                                Icon(
                                                  Icons.notifications,
                                                  size: 13,
                                                )
                                              ],
                                            ),
                                            heightSpace5,
                                            SizedBox(
                                              width: Get.width * 0.80,
                                              child: Text(
                                                'In publishing and graphic design, Lorem ipsum is a placeholder text commonly typeface...',
                                                style: BaseStyles.grey2normal12,
                                              ),
                                            ),
                                            heightSpace5,
                                          ],
                                        ),
                                      ],
                                    ),
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
                                                  // Get.to(LeadNewTaskView());

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
                                        ))
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
                                          Icons.calendar_today,
                                          color: AppColors.greyprimarycolor,
                                          size: 16,
                                        ),
                                        widthSpace3,
                                        Text(
                                          '4:31 PM, 18th May 22',
                                          style: BaseStyles.lightblackMedium12,
                                        )
                                      ],
                                    ),
                                    widthSpace20,
                                    Row(
                                      children: List.generate(
                                          4,
                                          (index) => Row(
                                                children: [
                                                  Container(
                                                    decoration: decorationbox(
                                                        color:
                                                            Color(0xffE3CB76),
                                                        radius: 30.0),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          horizontal: 8,
                                                          vertical: 4),
                                                      child: Text(
                                                        'Tag3',
                                                        style: BaseStyles
                                                            .whitesmall11,
                                                      ),
                                                    ),
                                                  ),
                                                  widthSpace5,
                                                ],
                                              )),
                                    )
                                    // Container(color: Color(0xffE3CB76),

                                    // )
                                  ],
                                ),
                                heightSpace5,
                                Divider(
                                  thickness: 0.5,
                                ),
                                // heightSpace10,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 130,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Positioned(
                                                  left: 0,
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundColor:
                                                        Color(0xffE9E9E9),
                                                    child: Text(
                                                      'A',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff828282),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12.sp),
                                                    ),
                                                  )),
                                              Positioned(
                                                  left: 15,
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundColor:
                                                        Color(0xffE1F8FF),
                                                    child: Text(
                                                      'R',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff56CCF2),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12.sp),
                                                    ),
                                                  )),
                                              Positioned(
                                                  left: 30,
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundColor:
                                                        Color(0xffF8E5FF),
                                                    child: Text(
                                                      'K',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xffBB6BD9),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12.sp),
                                                    ),
                                                  )),
                                              Positioned(
                                                  left: 45,
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundColor:
                                                        Color(0xffFFEDDD),
                                                    child: Text(
                                                      'S',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xffF2994A),
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12.sp),
                                                    ),
                                                  )),
                                              Positioned(
                                                  left: 70,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.add,
                                                        color: AppColors
                                                            .greycolor2,
                                                        size: 10,
                                                      ),
                                                      Text(
                                                        '10',
                                                        style: BaseStyles
                                                            .blacNormal12,
                                                      )
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      decoration: decorationbox(
                                          radius: 30.0,
                                          color: AppColors.greycolor3),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.notifications,
                                              color: AppColors.whiteColor,
                                              size: 13,
                                            ),
                                            widthSpace3,
                                            Text(
                                              'Tomorrow 9:00 AM',
                                              style: BaseStyles.whitenormal12,
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 15,
                                  color: Color(0xffFFF7DB),
                                  // width: Get.width,
                                ),
                              ),
                              Image.asset(
                                'assets/image/nts.png',
                                height: 15,
                                color: Color(0xffE3CB76),
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
      ),
    );
  }
}
