import 'package:Talbotiq/app/modules/jobs_screens/views/totalapplication.dart';
import 'package:Talbotiq/app/modules/planner_screens/controllers/planner_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:readmore/readmore.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../constants/values.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/decoration.dart';
import '../../../widgets/jobdetailwidget.dart';
import '../../../widgets/textfiled.dart';
import '../../jobs_screens/views/home_view.dart';

class ReportView extends GetView<PlannerController> {
  const ReportView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => PlannerController());
    return Scaffold(
        appBar: myappbar2(
          title: HomeName.Report,
          show: false,
          widget: Row(
            children: [
              Icon(
                Icons.calendar_today_outlined,
                size: 16,
                color: AppColors.whiteColor,
              ),
              widthSpace5,
              Text(
                'Last 7 Days',
                style: BaseStyles.whitenormal14,
              ),
              widthSpace5,
              Icon(
                Icons.arrow_drop_down,
                size: 20,
                color: AppColors.whiteColor,
              ),
              widthSpace20,
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              color: AppColors.whiteColor,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Selected Users (3)',
                          style: BaseStyles.blacNormal14,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: AppColors.orangecolor,
                                size: 16,
                              ),
                              // widthSpace20,
                              widthSpace3,
                              Text(
                                'Add ',
                                style: BaseStyles.orangeMedium14,
                              ),
                              widthSpace10,
                            ],
                          ),
                        ),
                      ],
                    ),
                    heightSpace5,
                    Divider(
                      thickness: 0.5,
                    ),
                    heightSpace5,
                    _name(),
                  ],
                ),
              ),
            ),
            heightSpace10,
            Container(
              color: AppColors.whiteColor,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Planned vs Achievement',
                          style: BaseStyles.blackMedium14,
                        ),
                        Text(
                          '48%',
                          style: BaseStyles.grey3Normal14,
                        )
                      ],
                    ),
                    heightSpace20,
                    LinearPercentIndicator(
                        padding: EdgeInsets.zero,
                        alignment: MainAxisAlignment.start,
                        width: Get.width * 0.93,
                        lineHeight: 6.0,
                        percent: 0.6,
                        animation: true,
                        barRadius: const Radius.circular(20),
                        // center:
                        //     Text("50.0%", style: BaseStyles.whitebold14),
                        // trailing: Icon(Icons.mood),

                        backgroundColor:
                            AppColors.greyprimarycolor.withOpacity(0.6),
                        progressColor: AppColors.primaryColor),
                    heightSpace10,
                    Divider(
                      thickness: 0.5,
                    ),
                    heightSpace10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Tasks',
                          style: BaseStyles.grey3Normal12,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '23',
                              style: BaseStyles.blackMedium19,
                            ),
                            widthSpace10,
                            Row(
                              children: [
                                Text(
                                  '43%',
                                  style: BaseStyles.greenMedium10,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_up,
                                  size: 16,
                                  color: AppColors.primaryColor2,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    heightSpace20,
                    SfCartesianChart(
                        margin: EdgeInsets.all(10),
                        borderWidth: 0,
                        // plotAreaBorderWidth: 0,
                        primaryXAxis: CategoryAxis(
                            isVisible: false,

                            //Hide the gridlines of y-axis
                            majorGridLines: MajorGridLines(width: 0),
                            //Hide the axis line of y-axis
                            axisLine: AxisLine(width: 0)),
                        primaryYAxis: NumericAxis(
                          axisLine: AxisLine(
                            width: 0,
                          ),
                          minimum: 0,
                          maximum: 30,
                          interval: 5,
                        ),
                        // tooltipBehavior: controller.tooltip,
                        series: <ChartSeries<ChartData, String>>[
                          ColumnSeries<ChartData, String>(
                              borderRadius: BorderRadius.circular(10),
                              pointColorMapper: (ChartData data, _) =>
                                  data.color,
                              dataLabelSettings:
                                  DataLabelSettings(isVisible: true),
                              emptyPointSettings: EmptyPointSettings(
                                  // Mode of empty point
                                  mode: EmptyPointMode.average),
                              dataSource: controller.data,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y,
                              name: 'Gold',
                              color: Color.fromRGBO(8, 142, 255, 1)),
                        ]),
                    heightSpace10,
                    const Divider(
                      thickness: 0.3,
                      height: 25,
                    ),
                    heightSpace10,
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                              radius: 6,
                              backgroundColor: AppColors.primaryColor),
                          widthSpace5,
                          Text(
                            'Completed',
                            style: BaseStyles.blacNormal14,
                          ),
                          widthSpace10,
                          CircleAvatar(
                            radius: 6,
                            backgroundColor: AppColors.redcolor,
                          ),
                          widthSpace5,
                          Text(
                            'Pending',
                            style: BaseStyles.blacNormal14,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            heightSpace10,
            Container(
              color: AppColors.whiteColor,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                radius: 6,
                                backgroundColor: AppColors.primaryColor),
                            widthSpace5,
                            Text(
                              'Completed Tasks',
                              style: BaseStyles.blackMedium14,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '10',
                              style: BaseStyles.blackMedium19,
                            ),
                            widthSpace10,
                            Row(
                              children: [
                                Text(
                                  '43%',
                                  style: BaseStyles.greenMedium10,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_up,
                                  size: 16,
                                  color: AppColors.primaryColor2,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Divider(
                      thickness: 0.5,
                    ),
                    heightSpace5,
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // heightSpace10,
                              Container(
                                decoration: decorationbox(
                                    radius: 5.0,
                                    color: AppColors.whiteColor,
                                    border: Border.all(
                                        color: AppColors.primaryColor)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Change color',
                                                    style: BaseStyles
                                                        .blackMedium14,
                                                  ),
                                                  heightSpace5,
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .calendar_today_outlined,
                                                        size: 12,
                                                        color: AppColors
                                                            .greycolor3,
                                                      ),
                                                      widthSpace3,
                                                      Text(
                                                        'Due on Oct 10, 2022',
                                                        style: BaseStyles
                                                            .lightblackMedium12,
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 10,
                                                    backgroundColor: AppColors
                                                        .primaryColor
                                                        .withOpacity(0.3),
                                                    child: Text(
                                                      'R',
                                                      style: BaseStyles
                                                          .greenMedium12,
                                                    ),
                                                  ),
                                                  widthSpace5,
                                                  CircleAvatar(
                                                    radius: 10,
                                                    backgroundColor: AppColors
                                                        .primaryColor
                                                        .withOpacity(0.3),
                                                    child: Text(
                                                      'S',
                                                      style: BaseStyles
                                                          .greenMedium12,
                                                    ),
                                                  ),
                                                  widthSpace5,
                                                  Text(
                                                    'UID-1',
                                                    style: BaseStyles
                                                        .grey3medium12,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              heightSpace10
                            ],
                          );
                        }),
                  ],
                ),
              ),
            ),
            heightSpace10,
            Container(
              color: AppColors.whiteColor,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                radius: 6, backgroundColor: AppColors.redcolor),
                            widthSpace5,
                            Text(
                              'Pending Tasks',
                              style: BaseStyles.blackMedium14,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '13',
                              style: BaseStyles.blackMedium19,
                            ),
                            widthSpace10,
                            Row(
                              children: [
                                Text(
                                  '43%',
                                  style: BaseStyles.greenMedium10,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_up,
                                  size: 16,
                                  color: AppColors.primaryColor2,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Divider(
                      thickness: 0.5,
                    ),
                    heightSpace5,
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // heightSpace10,
                              Container(
                                decoration: decorationbox(
                                    radius: 5.0,
                                    color: AppColors.whiteColor,
                                    border:
                                        Border.all(color: AppColors.redcolor)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Change color',
                                                    style: BaseStyles
                                                        .blackMedium14,
                                                  ),
                                                  heightSpace5,
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .calendar_today_outlined,
                                                        size: 12,
                                                        color: AppColors
                                                            .greycolor3,
                                                      ),
                                                      widthSpace3,
                                                      Text(
                                                        'Due on Oct 10, 2022',
                                                        style: BaseStyles
                                                            .lightblackMedium12,
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 10,
                                                    backgroundColor: AppColors
                                                        .primaryColor
                                                        .withOpacity(0.3),
                                                    child: Text(
                                                      'R',
                                                      style: BaseStyles
                                                          .greenMedium12,
                                                    ),
                                                  ),
                                                  widthSpace5,
                                                  CircleAvatar(
                                                    radius: 10,
                                                    backgroundColor: AppColors
                                                        .primaryColor
                                                        .withOpacity(0.3),
                                                    child: Text(
                                                      'S',
                                                      style: BaseStyles
                                                          .greenMedium12,
                                                    ),
                                                  ),
                                                  widthSpace5,
                                                  Text(
                                                    'UID-1',
                                                    style: BaseStyles
                                                        .grey3medium12,
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              heightSpace10
                            ],
                          );
                        }),
                    heightSpace30,
                    Divider(
                      thickness: 0.5,
                    ),
                    heightSpace5,
                    Row(
                      children: [
                        SizedBox(
                          width: Get.width * 0.22,
                          child: mybuttons(
                              style: BaseStyles.blacNormal14,
                              border: Border.all(
                                  color: AppColors.greyprimarycolor.shade300),
                              action: () {
                                // Get.to(LeadAddedView());
                                // controller
                                //     .index
                                //     .value = ;
                                print('object');
                              },
                              // name: 'Cancel',
                              widget: Icon(
                                Icons.file_download_outlined,
                                size: 16,
                                color: AppColors.greycolor3,
                              ),
                              color: AppColors.greyprimarycolor.shade100,
                              height: 40.0),
                        ),
                        widthSpace20,
                        Expanded(
                            child: mybuttons(
                                widget: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.share,
                                      size: 15,
                                      color: AppColors.whiteColor,
                                    ),
                                    widthSpace3,
                                    Text(
                                      'Share',
                                      style: BaseStyles.whitenormal14,
                                    )
                                  ],
                                ),
                                style: BaseStyles.whitenormal14,
                                // border: Border.all(color: AppColors.orangecolor),
                                action: () {
                                  // Get.to(LeadAddedView());
                                  // controller
                                  //     .index
                                  //     .value = ;
                                  print('object');
                                },
                                // name: 'Submit',
                                color: AppColors.secondarydarkColor,
                                height: 40.0)),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }

  ////////////////////name list widget ui////////////////////////////////
  _name() {
    return Container(
      height: 40,
      width: Get.width,
      alignment: Alignment.centerLeft,
      color: AppColors.whiteColor,
      margin: EdgeInsets.zero,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                widthSpace10,
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 40,
                    // width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.greyprimarycolor.shade100,
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            // backgroundColor: AppColors.primaryColor,
                            radius: 13,
                            child: Image.asset('assets/image/bajaj.png'),
                          ),
                          widthSpace5,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nikita Sharma",
                                  style: BaseStyles.blacNormal14),
                              Text(
                                'nikita@mail.com',
                                style: BaseStyles.grey3Normal10,
                              )
                            ],
                          ),
                          widthSpace5,
                          Icon(
                            Icons.close,
                            color: AppColors.greycolor3,
                            size: 16,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
