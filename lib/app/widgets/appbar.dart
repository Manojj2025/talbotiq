import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talbotiq/app/widgets/search.dart';

import '../constants/values.dart';

myappbar() {
  return PreferredSize(
      preferredSize: Size(Get.width, 70.0),
      child: Container(
        height: 70,
        padding: const EdgeInsets.all(5.0),
        color: AppColors.primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
                radius: 18,
                child: Image.asset(
                  'assets/image/profile.png',
                )),
            mysearch(readonly: false),
            const Icon(
              Icons.notifications_none_outlined,
              size: 30,
              color: AppColors.whiteColor,
            )
          ],
        ),
      ));
}

myappbar2({title, show}) {
  return AppBar(
    title: Text(
      title ?? "",
      style: BaseStyles.whitebold14,
    ),
    actions: [
      show
          ? Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor2,
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1.0,
                          blurRadius: 2,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    height: 30,
                    width: 30,
                    child: Icon(
                      Icons.person_add_alt_rounded,
                      color: AppColors.whiteColor,
                      size: 18,
                    ),
                  ),
                  widthSpace10,
                  widthSpace5,
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor2,
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1.0,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    height: 30,
                    width: 30,
                    child: Icon(
                      Icons.more_vert_sharp,
                      color: AppColors.whiteColor,
                      size: 18,
                    ),
                  )
                ],
              ),
            )
          : Container()
    ],
  );
}
