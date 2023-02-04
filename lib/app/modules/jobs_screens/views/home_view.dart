import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:Talbotiq/app/constants/app_basestyles.dart';
import 'package:Talbotiq/app/constants/app_colors.dart';
import 'package:Talbotiq/app/constants/strings.dart';
import 'package:Talbotiq/app/widgets/decoration.dart';

import '../../../widgets/appbar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar(),
      backgroundColor: AppColors.whiteColor,
      // body: GridView.builder(
      //     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      //         maxCrossAxisExtent: 200,
      //         childAspectRatio: 3 / 2,
      //         crossAxisSpacing: 0,
      //         mainAxisSpacing: 0),
      //     itemCount: controller.list.length,
      //     itemBuilder: (BuildContext ctx, index) {
      //       return Padding(
      //         padding: const EdgeInsets.all(10.0),
      //         child: Container(
      //           decoration: MyDecoration.simple2decoration(
      //               color: AppColors.whiteColor, radius: 10.0),
      //           child: Padding(
      //             padding: const EdgeInsets.only(left: 10.0),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Image.asset(
      //                   controller.list[index]['img'].toString(),
      //                   height: 25,
      //                   width: 25,
      //                 ),
      //                 heightSpace5,
      //                 Text(
      //                   controller.list[index]['value'].toString(),
      //                   style: BaseStyles.blackMedium18,
      //                 ),
      //                 heightSpace3,
      //                 Text(
      //                   controller.list[index]['title'].toString(),
      //                   style: BaseStyles.greyNormal12,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       );
      //     }),
    );
  }
}
