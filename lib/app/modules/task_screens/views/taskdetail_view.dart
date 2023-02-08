import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/decoration.dart';
import '../controllers/taskdetail_controller.dart';

class TaskdetailView extends GetView<TaskdetailController> {
  const TaskdetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => TaskdetailController());
    return Scaffold(
      appBar: myappbar2(
          title: HomeName.TaskDetails, show: true, show2: Container()),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(8.0),
              color: AppColors.whiteColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        color: Color(0xffF4FAF8),
                        height: 30,
                        child: Row(
                          children: [
                            Text(
                              'UI/UX Team',
                              style: BaseStyles.grey2normal10,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: AppColors.greycolor3,
                              size: 16,
                            ),
                            Text(
                              'Todo',
                              style: BaseStyles.grey2normal10,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: AppColors.greycolor3,
                              size: 16,
                            ),
                            Text(
                              'UID-1 Main ...',
                              style: BaseStyles.grey2normal10,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/image/arrow.png',
                        height: 30,
                      )
                    ],
                  ),
                  heightSpace20,
                  Row(
                    children: [
                      Container(
                        decoration: decorationbox(
                            radius: 5.0, color: AppColors.yellowcolor),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Icon(
                            Icons.remove_red_eye_outlined,
                            color: AppColors.whiteColor,
                            size: 12,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 20,
                        color: AppColors.greycolor3,
                      ),
                      widthSpace5,
                      Text(
                        'Main task name goes here',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: BaseStyles.blackMedium16,
                      ),
                    ],
                  ),
                ]),
              )),
          heightSpace10,
          _name(),
          heightSpace10,
          jobDescription(),
          heightSpace10,
        ],
      ),
    );
  }

/////////job description////////////////////////////////////////////////////////////////

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Description',
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
              heightSpace10,
              Divider(
                thickness: 0.5,
              ),
              heightSpace5,
              ReadMoreText(
                "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual...",
                trimLines: 2,
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
///////// professional skills////////////////////////////////

  //////////////////// job name list widget ui////////////////////////////////
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
                          controller.selectname.value =
                              controller.list[index]['name'].toString();
                        },
                        child: Container(
                          height: 30,
                          // width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: controller.selectname.value ==
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
                              style: controller.selectname.value ==
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
