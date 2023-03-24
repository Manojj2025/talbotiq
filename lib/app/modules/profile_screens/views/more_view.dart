import 'package:Talbotiq/app/modules/lead_screens/views/lead_view.dart';
import 'package:Talbotiq/app/modules/notes_screens/views/notes_view.dart';
import 'package:Talbotiq/app/modules/profile_screens/views/settings_view.dart';
import 'package:Talbotiq/app/modules/task_screens/views/task_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../Candidates_screens/views/candidates_view.dart';
import '../../Oppurtunity_screen/views/oppurtunity_view.dart';
import '../../chat_screens/views/chat_view.dart';
import '../../clients_screens/views/client_view.dart';
import '../../help_screens/views/help_view.dart';
import '../../planner_screens/views/planner_view.dart';
import '../../reminder_screens/views/reminder_view.dart';
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
              InkWell(
                onTap: () {
                  Get.to(SettingsView());
                },
                child: Row(
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
              ),
              heightSpace20,
              ListView.separated(
                  separatorBuilder: ((context, index) => Divider(
                        thickness: 0.5,
                        height: 4.8,
                      )),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.profillist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
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
                            case 4:
                              Get.to(TaskView());

                              break;
                            case 5:
                              Get.to(NotesView());

                              break;
                            case 6:
                              Get.to(ChatView());

                              break;
                            case 7:
                              Get.to(HelpView());

                              break;
                            case 8:
                              Get.to(ReminderView());

                              break;
                            case 9:
                              Get.to(PlannerView());

                              break;
                            default:
                          }
                        },
                        horizontalTitleGap: 0.0,
                        visualDensity:
                            VisualDensity(horizontal: -0.4, vertical: -0.4),
                        contentPadding: EdgeInsets.zero,
                        // minVerticalPadding: 0.0,
                        dense: true,
                        leading: Image.asset(
                          controller.profillist[index]['image'].toString(),
                          height: 22,
                          width: 22,
                        ),
                        title: Text(
                          controller.profillist[index]['name'].toString(),
                          style: BaseStyles.blacNormal16,
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ));
  }
}
