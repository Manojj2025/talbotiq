import 'package:Talbotiq/app/modules/lead_screens/views/lead_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../Candidates_screens/views/candidates_view.dart';
import '../../Oppurtunity_screen/views/oppurtunity_view.dart';
import '../../clients_screens/views/client_view.dart';
import '../controllers/more_controller.dart';

class MoreView extends GetView<MoreController> {
  const MoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => MoreController());
    return Scaffold(
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
                          GestureDetector(
                            onTap: () {
                              switch (index) {
                                case 2:
                                  Get.to(ClientView());

                                  break;
                                case 0:
                                  Get.to(CandidatesView());

                                  break;
                                case 1:
                                  Get.to(LeadView());

                                  break;
                                case 3:
                                  Get.to(OppurtunityView());

                                  break;
                                default:
                              }
                            },
                            child: Row(
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
        ));
  }
}
