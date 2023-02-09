import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:Talbotiq/app/modules/jobs_screens/controllers/createnewjob_controller.dart';
import 'package:Talbotiq/app/modules/jobs_screens/views/selectclient_view.dart';
import 'package:Talbotiq/app/widgets/buttons.dart';
import 'package:Talbotiq/app/widgets/textfiled.dart';
import 'package:timelines/timelines.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/decoration.dart';
import '../../../widgets/filters.dart';
import '../../../widgets/jobdetailwidget.dart';
import '../../../widgets/search.dart';
import '../controllers/task_controller.dart';

class MemberView extends GetView<TaskController> {
  const MemberView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => TaskController());
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: myappbar2(
          title: HomeName.Members,
          show: false,
          show2: Container(),
          widget: Row(
            children: [
              Icon(
                Icons.add,
                color: AppColors.whiteColor,
                size: 16,
              ),
              widthSpace3,
              // widthSpace20,
              Text(
                'Add',
                style: BaseStyles.whitebold14,
              ),
              widthSpace10,
            ],
          ),
        ),
        body: Container(
            width: Get.width,
            color: AppColors.whiteColor,
            child: Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                  top: 10.0,
                ),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        horizontalTitleGap: 2.0,
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          'Nikita Sharma',
                          style: BaseStyles.blacNormal14,
                        ),
                        subtitle: Text(
                          'nikita@gmail.com',
                          style: BaseStyles.grey2Medium12,
                        ),
                        trailing: Wrap(
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Container(
                              decoration: decorationbox(
                                  radius: 30.0,
                                  border: Border.all(color: Color(0xffE0E0E0))),
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  widthSpace5,
                                  Text(
                                    index == 2 ? 'Viewer' : 'Editor',
                                    style: BaseStyles.lightblackMedium12,
                                  ),
                                  widthSpace5,
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: AppColors.greyprimarycolor,
                                    size: 18,
                                  )
                                ],
                              ),
                            ),
                            widthSpace5,
                            Icon(
                              Icons.delete_outline,
                              size: 20,
                              color: AppColors.greycolor3,
                            ),
                            widthSpace5
                          ],
                        ),
                        leading: CircleAvatar(
                          // backgroundColor: AppColors.primaryColor,
                          radius: 16,
                          child: Image.asset('assets/image/bajaj.png'),
                        ),
                      );
                    }))));
  }
}
