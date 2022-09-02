// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_dear_app/app/data/dummy.dart';
import 'package:my_dear_app/app/modules/components/bottom_navigation.dart';
import 'package:my_dear_app/app/modules/currentuser/views/currentuser_view.dart';
import 'package:my_dear_app/app/routes/app_pages.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../controllers/reports_controller.dart';

class ReportsView extends GetView<ReportsController> {
  final List<SubscriberSeries> data = [
    SubscriberSeries(
      year: "15",
      year2: 25,
      year3: 10,
      subscribers: 10,
    ),
    SubscriberSeries(
      year: "16",
      year2: 5,
      year3: 25,
      subscribers: 20,
    ),
    SubscriberSeries(
      year: "17",
      year2: 30,
      year3: 21,
      subscribers: 3,
    ),
    SubscriberSeries(
      year: "18",
      year2: 2,
      year3: 14,
      subscribers: 7,
    ),
    SubscriberSeries(
      year: "19",
      year2: 25,
      year3: 10,
      subscribers: 21,
    ),
    SubscriberSeries(
      year: "20",
      year2: 28,
      year3: 41,
      subscribers: 22,
    ),
    SubscriberSeries(
      year: "21",
      year2: 34,
      year3: 35,
      subscribers: 30,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF9F9FF),
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              icon: Icon(Icons.notifications_none_rounded),
              onPressed: () {
                Get.toNamed(Routes.NOTIFICATION);
              },
              color: Color(0xFF0C056D),
            ),
          ),
        ],
        leading: GestureDetector(
          onTap: () {
            CurrentUserInfo(context);
          },
          child: Container(
            padding: EdgeInsets.only(
              left: 7,
              top: 7,
              bottom: 3,
            ),
            height: 35,
            width: 35,
            child: Image.asset(
              'images/homeProfile.png',
            ),
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Reports',
          style: TextStyle(
              fontFamily: 'SF',
              fontSize: 17,
              color: Color(0xFF0C056D),
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigation(
        isHome: false,
        isMedication: false,
        isFamily: false,
        isReport: true,
        isSetting: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Avg. Glucose Level:',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xFF07033C),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.LOGTIME);
                          },
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    MdiIcons.clockTimeFourOutline,
                                    size: 20,
                                    color: Color(0xFF11079E),
                                  ),
                                ),
                                TextSpan(
                                  text: " Glucose Log",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF11079E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '130 mg/dl',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xFF07033C),
                          ),
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Obx(
                              () => Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      controller.selectedOption.value = 'Today';
                                    },
                                    child: Text(
                                      'Today',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color:
                                            controller.selectedOption.value ==
                                                    'Today'
                                                ? Color(0xFF11079E)
                                                : Color(0xFF88989B),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.008,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.09,
                                    height: MediaQuery.of(context).size.height *
                                        0.0035,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: controller
                                                      .selectedOption.value ==
                                                  'Today'
                                              ? [
                                                  Color(0xFF11079E),
                                                  Color(0xFF594FE1)
                                                ]
                                              : [Colors.white, Colors.white],
                                          begin: Alignment.topLeft,
                                          end: Alignment.topRight),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Obx(
                              () => Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      controller.selectedOption.value = '7d';
                                    },
                                    child: Text(
                                      '7d',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color:
                                            controller.selectedOption.value ==
                                                    '7d'
                                                ? Color(0xFF11079E)
                                                : Color(0xFF88989B),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.008,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.09,
                                    height: MediaQuery.of(context).size.height *
                                        0.0035,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: controller
                                                      .selectedOption.value ==
                                                  '7d'
                                              ? [
                                                  Color(0xFF11079E),
                                                  Color(0xFF594FE1)
                                                ]
                                              : [Colors.white, Colors.white],
                                          begin: Alignment.topLeft,
                                          end: Alignment.topRight),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Obx(
                              () => Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      controller.selectedOption.value = '14d';
                                    },
                                    child: Text(
                                      '14d',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color:
                                            controller.selectedOption.value ==
                                                    '14d'
                                                ? Color(0xFF11079E)
                                                : Color(0xFF88989B),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.008,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.09,
                                    height: MediaQuery.of(context).size.height *
                                        0.0035,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: controller
                                                      .selectedOption.value ==
                                                  '14d'
                                              ? [
                                                  Color(0xFF11079E),
                                                  Color(0xFF594FE1)
                                                ]
                                              : [Colors.white, Colors.white],
                                          begin: Alignment.topLeft,
                                          end: Alignment.topRight),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Obx(
                              () => Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      controller.selectedOption.value = '30d';
                                    },
                                    child: Text(
                                      '30d',
                                      style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color:
                                            controller.selectedOption.value ==
                                                    '30d'
                                                ? Color(0xFF11079E)
                                                : Color(0xFF88989B),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.008,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.09,
                                    height: MediaQuery.of(context).size.height *
                                        0.0035,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: controller
                                                      .selectedOption.value ==
                                                  '30d'
                                              ? [
                                                  Color(0xFF11079E),
                                                  Color(0xFF594FE1)
                                                ]
                                              : [Colors.white, Colors.white],
                                          begin: Alignment.topLeft,
                                          end: Alignment.topRight),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 400,
                      padding: EdgeInsets.all(20),
                      child: SfCartesianChart(
                        zoomPanBehavior: ZoomPanBehavior(
                          enablePanning: true,
                        ),
                        selectionGesture: ActivationMode.singleTap,
                        plotAreaBorderWidth: 0,
                        primaryXAxis: CategoryAxis(
                          minimum: 0,
                          maximum: 6,
                          majorGridLines: MajorGridLines(width: 0),
                          axisLine: AxisLine(width: 0),
                        ),
                        primaryYAxis: NumericAxis(
                          isVisible: false,
                          majorGridLines: MajorGridLines(width: 0),
                          axisLine: AxisLine(width: 0),
                        ),
                        tooltipBehavior: TooltipBehavior(
                            enable: true,
                            header: 'April',
                            builder: (dynamic data,
                                dynamic point,
                                dynamic series,
                                int pointIndex,
                                int seriesIndex) {
                              return Container(
                                  height: 93,
                                  width: 120,
                                  color: Color(0xFFF5F5F5),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'April 5',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFFBE9E45)),
                                      ),
                                      Text(
                                        '02:13 AM: ${point.y.toString()} mg/dl',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF11079E)),
                                      ),
                                      Text(
                                        '02:13 AM: ${point.y.toString()} mg/dl',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF11079E)),
                                      ),
                                      Text(
                                        '05:13 AM: ${point.y.toString()} mg/dl',
                                        style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFFEF5261)),
                                      ),
                                    ],
                                  ));
                            }),
                        series: <ChartSeries>[
                          ColumnSeries<SubscriberSeries, String>(
                              enableTooltip: true,
                              selectionBehavior: controller.selectionBehavior,
                              dataLabelSettings:
                                  DataLabelSettings(isVisible: true),
                              spacing: 0.5,
                              color: Color.fromARGB(255, 21, 14, 151),
                              isTrackVisible: false,
                              trackColor: Colors.transparent,
                              trackBorderColor: Colors.transparent,
                              dataSource: data,
                              xValueMapper: (SubscriberSeries sales, _) =>
                                  sales.year,
                              yValueMapper: (SubscriberSeries sales, _) =>
                                  sales.subscribers),
                        ],
                      ),
                    ),
                    //SubscriberChart(data: data),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Normal Glucose',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color(0xFF88989B),
                              ),
                            ),
                            Text(
                              'Level Last 30 days',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color(0xFF88989B),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.009,
                            ),
                            Text(
                              '120 mg/dl',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xFF11079E),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Lowest Glucose',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color(0xFF88989B),
                              ),
                            ),
                            Text(
                              'Level Last 30 days',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color(0xFF88989B),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.009,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: '53 mg/dl ',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xFFEF5261),
                                  ),
                                ),
                                WidgetSpan(
                                    child: Icon(
                                  Icons.arrow_downward,
                                  size: 18,
                                  color: Color(0xFFEF5261),
                                ))
                              ]),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Highest Glucose',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color(0xFF88989B),
                              ),
                            ),
                            Text(
                              'Level Last 30 days',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Color(0xFF88989B),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.009,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: '345 mg/dl ',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xFFEF5261),
                                  ),
                                ),
                                WidgetSpan(
                                    child: Icon(
                                  Icons.arrow_upward,
                                  size: 18,
                                  color: Color(0xFFEF5261),
                                ))
                              ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Avg. Glucose Level in April',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color(0xFF07033C),
                      ),
                    ),
                    Text(
                      '130 mg/dl',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF07033C),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Widget performSwipe(ChartSwipeDirection direction) {
  //   if (direction == ChartSwipeDirection.end) {
  //     chartData.add(
  //         ChartSampleData(x: chartData[chartData.length - 1].x + 1, y: 10));
  //     seriesController.updateDataSource(addedDataIndex: chartData.length - 1);

  //   }
  //   return Container();
  // }
}
