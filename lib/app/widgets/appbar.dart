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
