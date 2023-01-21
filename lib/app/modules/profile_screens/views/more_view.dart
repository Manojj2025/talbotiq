import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../controllers/more_controller.dart';

class MoreView extends GetView<MoreController> {
  const MoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MoreController());
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.whiteColor,
          appBar: myappbar(),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          radius: 25,
                          child: Image.asset(
                            'assets/image/profile.png',
                          ),
                        ),
                        widthSpace10,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Janki Bisht',
                              style: BaseStyles.blackmedium18,
                            ),
                            heightSpace3,
                            Text(
                              'janki@Talbotiq.com',
                              style: BaseStyles.grey2Medium14,
                            )
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right_sharp,
                      color: AppColors.greyprimarycolor,
                      size: 30,
                    )
                  ],
                ),
                heightSpace20,
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.profillist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  controller.profillist[index]['image']
                                      .toString(),
                                  height: 22,
                                  width: 22,
                                ),
                                widthSpace10,
                                widthSpace5,
                                Text(
                                  controller.profillist[index]['name']
                                      .toString(),
                                  style: BaseStyles.blacNormal16,
                                )
                              ],
                            ),
                            heightSpace10,
                            Divider(
                              thickness: 0.5,
                              height: 4.8,
                            )
                          ],
                        ),
                      );
                    }),
              ],
            ),
          )),
    );
  }
}
