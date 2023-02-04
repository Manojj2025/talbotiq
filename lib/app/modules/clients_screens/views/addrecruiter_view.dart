import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:Talbotiq/app/widgets/textfiled.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/jobdetailwidget.dart';
import '../controllers/clientNewtask_controller.dart';

class AddrecruiterView extends GetView<ClientNewTaskController> {
  const AddrecruiterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ClientNewTaskController());
    return Scaffold(
        appBar: myappbar2(
            show: false,
            title: JobsName.addrecruiter,
            widget: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, right: 20),
                child: Text(
                  'Save',
                  style: !controller.show2.value
                      ? BaseStyles.whitelight16
                      : BaseStyles.whiteMedium16,
                ),
              ),
            )),
        body: Container(
          height: Get.height,
          color: AppColors.whiteColor,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                textwidget(name: 'Name *', text: 'Enter', onTap: () {}),
                const Divider(
                  thickness: 0.3,
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Phone *",
                      style: BaseStyles.grey1Medium14,
                    ),
                    heightSpace5,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        singlefiled(
                          color: AppColors.greyprimarycolor.shade300,
                          width: 60.0,
                          name: '+91',
                        ),
                        Expanded(
                          child: textfiled(
                            // onchange: () {},
                            // controller:
                            //     controller,
                            maxline: 1,
                            // ontap: () {},
                            readonly: false,
                            text: 'Enter',
                            height: 40.0,
                            minline: 1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  thickness: 0.3,
                  height: 25,
                ),
                textwidget(name: 'Email *', text: 'Enter'),
                const Divider(
                  thickness: 0.3,
                  height: 25,
                ),
                textwidget(name: 'Reporting to (email) *', text: 'Enter'),
                const Divider(
                  thickness: 0.3,
                  height: 25,
                ),
              ],
            ),
          ),
        ));
  }

  ///
}
