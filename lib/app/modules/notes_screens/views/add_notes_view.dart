import 'package:Talbotiq/app/modules/lead_screens/controllers/lead_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:Talbotiq/app/widgets/decoration.dart';

import '../../../constants/values.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/filters.dart';
import '../../clients_screens/views/clientNewtask_view.dart';
import '../controllers/addnotes_view.dart';
import '../controllers/notes_controller.dart';

class AddnotesView extends GetView<AddnotesController> {
  const AddnotesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AddnotesController());
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 30,
          title: Text(
            HomeName.MyNotes,
            style: BaseStyles.whiteMedium16,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: AppColors.whiteColor,
                    size: 18,
                  ),
                  widthSpace10,
                  // widthSpace5,
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: AppColors.whiteColor,
                          size: 18,
                        ),
                        widthSpace5,
                        Text(
                          'New',
                          style: BaseStyles.whitebold14,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        body: Column(
          children: [
            //// filters and soryby widget ui//////
            Card(
              elevation: 0,
              color: AppColors.whiteColor,
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [],
                ),
              ),
            ),
            //////////////////// job name list widget ui////////////////////////////////
            heightSpace10,
          ],
        ));
  }
}
