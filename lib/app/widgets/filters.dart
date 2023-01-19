import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:talbotiq/app/widgets/buttons.dart';
import 'package:talbotiq/app/widgets/textfiled.dart';

import '../constants/values.dart';
import 'decoration.dart';

filter(context, controller) {
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
          heightFactor: 0.8,
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
                  HomeName.filters,
                  style: BaseStyles.blackMedium16,
                ),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.filterlist.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        controller.filterlist[index].toString(),
                                        style: BaseStyles.blacNormal14,
                                      ),
                                      widthSpace5,
                                      index == 0
                                          ? CircleAvatar(
                                              radius: 10,
                                              backgroundColor:
                                                  AppColors.primaryColor,
                                              child: Text(
                                                '2',
                                                style: BaseStyles.whitesmall10,
                                              ),
                                            )
                                          : Container(),
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: AppColors.greyprimarycolor,
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 150,
                        decoration: decorationbox(
                          border: Border.all(
                            color: AppColors.greyprimarycolor.shade200,
                          ),
                          color: AppColors.whiteColor,
                        ),
                        child: Text(
                          HomeName.reset,
                          style: BaseStyles.grey2Medium14,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 150,
                        decoration: decorationbox(
                          border: Border.all(
                            color: AppColors.greyprimarycolor.shade200,
                          ),
                          color: AppColors.orangecolor,
                        ),
                        child: Text(
                          HomeName.apply,
                          style: BaseStyles.whitenormal14,
                        ),
                      ),
                    )
                  ],
                ),
                heightSpace10
              ],
            ),
          ),
        );
      });
}

sortby(context, controller) {
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
          heightFactor: 0.4,
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
                  JobsName.sortby,
                  style: BaseStyles.blackMedium16,
                ),
                heightSpace10,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: Get.width * 0.45,
                        decoration: decorationbox2(
                          radius: 30.0,
                          color: AppColors.primaryColor,
                        ),
                        child: Text(
                          'Accending',
                          style: BaseStyles.whitenormal12,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: Get.width * 0.45,
                        decoration: decorationbox2(
                          radius: 30.0,
                          color: AppColors.greyprimarycolor.shade100,
                        ),
                        child: Text(
                          'Descending',
                          style: BaseStyles.blacNormal12,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.sortlist.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          horizontalTitleGap: 2.0,
                          dense: true,
                          contentPadding: const EdgeInsets.only(left: 5),
                          title: Text(
                            controller.sortlist[index].toString(),
                            style: BaseStyles.blacNormal14,
                          ),
                          leading: Radio(
                            activeColor: AppColors.primaryColor,
                            visualDensity: const VisualDensity(
                                horizontal: -0.4, vertical: -0.4),
                            value: true,
                            groupValue: false,
                            onChanged: (value) {},
                          ),
                        );
                      }),
                ),
                heightSpace10
              ],
            ),
          ),
        );
      });
}

////
skillswidget(context, controller) {
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
          heightFactor: 0.6,
          child: Container(
            // height: 300,
            decoration: MyDecoration.radiusonlydecoration(),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightSpace20,
                  Align(
                    child: Container(
                      height: 4,
                      width: 160,
                      decoration: MyDecoration.simpledecoration(
                          color: AppColors.greyprimarycolor),
                    ),
                  ),
                  heightSpace20,
                  Text(
                    JobsName.addprofessional,
                    style: BaseStyles.blackMedium16,
                  ),
                  heightSpace10,
                  textwidget(
                      name: 'Professional skills*',
                      text: 'Enter',
                      controller: controller.psearchtxt),
                  heightSpace10,
                  controller.psearchtxt.text != '' ||
                          controller.psearchtxt.text.isNotEmpty
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Nothing found named “Php”',
                              style: BaseStyles.grey3medium12,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  color: AppColors.orangecolor,
                                  size: 18,
                                ),
                                Text(
                                  'Add More',
                                  style: BaseStyles.orangeMedium14,
                                ),
                              ],
                            )
                          ],
                        )
                      : Container(),
                  Divider(
                    thickness: 0.5,
                  ),
                  heightSpace5,
                  Text(
                    "Rate Skills*",
                    style: BaseStyles.grey1Medium14,
                  ),
                  heightSpace5,
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    unratedColor: AppColors.greyprimarycolor.shade300,
                    itemSize: 30.0,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  heightSpace10,
                  Divider(
                    thickness: 0.5,
                  ),
                  heightSpace5,
                  textwidget(name: 'Weightage*', text: 'Enter'),
                  Expanded(child: Container()),
                  mybuttons(
                      style: BaseStyles.grey2medium16,
                      name: 'Create',
                      color: AppColors.greyprimarycolor.shade100,
                      height: 45.0)
                ],
              ),
            ),
          ),
        );
      });
}
