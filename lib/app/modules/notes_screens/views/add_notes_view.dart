import 'package:Talbotiq/app/modules/lead_screens/controllers/lead_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:Talbotiq/app/widgets/decoration.dart';
import 'package:html_editor_enhanced/html_editor.dart';

import '../../../constants/values.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/filters.dart';
import '../../clients_screens/views/clientNewtask_view.dart';
import '../controllers/addnotes_controller.dart';
import '../controllers/notes_controller.dart';

class AddnotesView extends GetView<AddnotesController> {
  const AddnotesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => AddnotesController());
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leadingWidth: 30,
          title: Text(
            HomeName.AddNewNote,
            style: BaseStyles.whiteMedium16,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.more,
                    color: AppColors.whiteColor,
                    size: 18,
                  ),
                  widthSpace10,
                  widthSpace5,
                  Icon(
                    Icons.more_vert_rounded,
                    color: AppColors.whiteColor,
                    size: 18,
                  ),
                  widthSpace5,
                  widthSpace10,
                  Icon(
                    Icons.check_circle,
                    color: AppColors.whiteColor,
                    size: 18,
                  ),
                  // widthSpace5,
                ],
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              color: AppColors.whiteColor,
              child: HtmlEditor(
                controller: controller.htmlcontroller, //required
                htmlEditorOptions: HtmlEditorOptions(
                  hint: "Type you Text here",
                ),
                htmlToolbarOptions: HtmlToolbarOptions(
                  defaultToolbarButtons: [
                    ParagraphButtons(
                      alignCenter: true,
                      increaseIndent: false,
                      decreaseIndent: false,
                      caseConverter: false,
                      alignRight: true,
                      alignLeft: true,
                      alignJustify: true,
                      textDirection: false,
                      lineHeight: false,
                    ),
                    FontButtons(
                      clearAll: false, strikethrough: false, subscript: false,
                      superscript: false,
                      underline: true, bold: true,
                      italic: true,
                      //you can do more with
                      //bold, clearAll, strikethrough,
                      //subscript, supscript
                    ),
                    // StyleButtons(),
                    ColorButtons(foregroundColor: true, highlightColor: true),
                  ],
                  // toolbarPosition: ToolbarPosition
                  //     .custom, //required to place toolbar anywhere!

                  toolbarType: ToolbarType.nativeGrid,
                ),
                otherOptions: OtherOptions(
                  height: 500,
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () async {
                // String data = await controller.getText();
              },
              child: Text("Get HTML Text"),
            ),
            //////////////////// job name list widget ui////////////////////////////////
            heightSpace10,
          ],
        ));
  }
}
