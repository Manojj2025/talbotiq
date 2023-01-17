import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
