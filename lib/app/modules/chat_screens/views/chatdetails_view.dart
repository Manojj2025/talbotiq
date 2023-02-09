import 'package:Talbotiq/app/modules/chat_screens/controllers/chat_controller.dart';
import 'package:Talbotiq/app/modules/chat_screens/views/schedule_view.dart';
import 'package:Talbotiq/app/modules/task_screens/views/projectdetail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../constants/values.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/decoration.dart';
import '../../../widgets/filters.dart';
import '../../../widgets/textfiled.dart';
import '../controllers/chatdetail_controller.dart';

class ChatdetailView extends GetView<ChatdetailController> {
  const ChatdetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ChatdetailController());
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        title: Row(
          children: [
            Text(
              'Raghav Chaudhary',
              style: BaseStyles.whiteMedium16,
            ),
            widthSpace3,
            Icon(
              Icons.info_outlined,
              color: AppColors.whiteColor,
              size: 20,
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                Icon(
                  Icons.call,
                  color: AppColors.whiteColor,
                  size: 18,
                ),
                widthSpace10,
                // widthSpace5,
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.video_call,
                    color: AppColors.whiteColor,
                    size: 18,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: textfiled(
            radius: 30.0,
            eyeshow: true,
            suffixIconcolor: AppColors.yellowcolor,
            suffixicon: Icons.send,
            prifixshow: false,
            maxline: 1,
            // ontap: () {},
            readonly: false,
            text: 'Type your message...'
            // height: 40.0,
            // minline: 1,
            ),
      ),
      body: Container(
        color: AppColors.whiteColor,
        height: Get.height,
        child: ListView.builder(
          itemCount: controller.messages.length,
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              padding:
                  EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
              child: Align(
                alignment: (controller.messages[index].messageType == "receiver"
                    ? Alignment.topLeft
                    : Alignment.topRight),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: (controller.messages[index].messageType == "receiver"
                        ? Color(0xffF7F7F7)
                        : Color(0xffECF7F3)),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: AppColors.yellowcolor,
                      ),
                      Text(controller.messages[index].messageContent,
                          style: BaseStyles.blacNormal16),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ChatMessage {
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}
