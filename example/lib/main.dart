import 'dart:math';
import 'package:flutter/material.dart';
import 'package:apex_dart/apex_dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final ApexController lineChartController = ApexController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Apex Dart example app'),
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [

                  ApexDart(
                      controller: lineChartController,
                      options: const {
                        "series": [
                          {
                            "data": [
                              {
                                "x": 1546275600000,
                                "y": [6629.81, 6650.5, 6623.04, 6633.33]
                              },
                              {
                                "x": 1546362000000,
                                "y": [6632.01, 6643.59, 6620, 6630.11]
                              },
                              {
                                "x": 1546448400000,
                                "y": [6630.71, 6648.95, 6623.34, 6635.65]
                              },
                              {
                                "x": 1546707600000,
                                "y": [6624.61, 6632.2, 6617, 6626.02]
                              },
                              {
                                "x": 1546794000000,
                                "y": [6635.65, 6651, 6629.67, 6638.24]
                              },
                              {
                                "x": 1546880400000,
                                "y": [6638.24, 6640, 6620, 6624.47]
                              },
                              {
                                "x": 1546966800000,
                                "y": [6624.53, 6636.03, 6621.68, 6624.31]
                              },
                              {
                                "x": 1547053200000,
                                "y": [6624.61, 6632.2, 6617, 6626.02]
                              },
                              {
                                "x": 1547139600000,
                                "y": [6627, 6627.62, 6584.22, 6603.02]
                              },
                              {
                                "x": 1547226000000,
                                "y": [6605, 6608.03, 6598.95, 6604.01]
                              },
                              {
                                "x": 1547312400000,
                                "y": [6604.5, 6614.4, 6602.26, 6608.02]
                              },
                              {
                                "x": 1547398800000,
                                "y": [6608.02, 6610.68, 6601.99, 6608.91]
                              },
                              {
                                "x": 1547485200000,
                                "y": [6608.91, 6618.99, 6608.01, 6612]
                              },
                              {
                                "x": 1547571600000,
                                "y": [6612, 6615.13, 6605.09, 6612]
                              },
                              {
                                "x": 1547658000000,
                                "y": [6612, 6624.12, 6608.43, 6622.95]
                              },
                              {
                                "x": 1547744400000,
                                "y": [6623.91, 6623.91, 6615, 6615.67]
                              },
                              {
                                "x": 1547830800000,
                                "y": [6618.69, 6618.74, 6610, 6610.4]
                              },
                              {
                                "x": 1547917200000,
                                "y": [6611, 6622.78, 6610.4, 6614.9]
                              },
                              {
                                "x": 1548003600000,
                                "y": [6614.9, 6626.2, 6613.33, 6623.45]
                              },
                              {
                                "x": 1548090000000,
                                "y": [6623.48, 6627, 6618.38, 6620.35]
                              },
                              {
                                "x": 1548176400000,
                                "y": [6619.43, 6620.35, 6610.05, 6615.53]
                              },
                              {
                                "x": 1548262800000,
                                "y": [6615.53, 6617.93, 6610, 6615.19]
                              },
                              {
                                "x": 1548349200000,
                                "y": [6615.19, 6621.6, 6608.2, 6620]
                              },
                              {
                                "x": 1548435600000,
                                "y": [6619.54, 6625.17, 6614.15, 6620]
                              },
                              {
                                "x": 1548522000000,
                                "y": [6620.33, 6634.15, 6617.24, 6624.61]
                              },
                              {
                                "x": 1548608400000,
                                "y": [6625.95, 6626, 6611.66, 6617.58]
                              },
                              {
                                "x": 1548694800000,
                                "y": [6619, 6625.97, 6595.27, 6598.86]
                              },
                              {
                                "x": 1548781200000,
                                "y": [6598.86, 6598.88, 6570, 6587.16]
                              },
                              {
                                "x": 1548867600000,
                                "y": [6588.86, 6600, 6580, 6593.4]
                              },
                              {
                                "x": 1548954000000,
                                "y": [6593.99, 6598.89, 6585, 6587.81]
                              },
                              {
                                "x": 1549040400000,
                                "y": [6587.81, 6592.73, 6567.14, 6578]
                              },
                              {
                                "x": 1549126800000,
                                "y": [6578.35, 6581.72, 6567.39, 6579]
                              },
                              {
                                "x": 1549213200000,
                                "y": [6579.38, 6580.92, 6566.77, 6575.96]
                              },
                              {
                                "x": 1549299600000,
                                "y": [6575.96, 6589, 6571.77, 6588.92]
                              },
                              {
                                "x": 1549386000000,
                                "y": [6588.92, 6594, 6577.55, 6589.22]
                              },
                              {
                                "x": 1549472400000,
                                "y": [6589.3, 6598.89, 6589.1, 6596.08]
                              },
                              {
                                "x": 1549558800000,
                                "y": [6597.5, 6600, 6588.39, 6596.25]
                              },
                              {
                                "x": 1549645200000,
                                "y": [6598.03, 6600, 6588.73, 6595.97]
                              },
                              {
                                "x": 1549731600000,
                                "y": [6595.97, 6602.01, 6588.17, 6602]
                              },
                              {
                                "x": 1549818000000,
                                "y": [6602, 6607, 6596.51, 6599.95]
                              },
                              {
                                "x": 1549904400000,
                                "y": [6600.63, 6601.21, 6590.39, 6591.02]
                              },
                              {
                                "x": 1549990800000,
                                "y": [6591.02, 6603.08, 6591, 6591]
                              },
                              {
                                "x": 1550077200000,
                                "y": [6591, 6601.32, 6585, 6592]
                              },
                              {
                                "x": 1550163600000,
                                "y": [6593.13, 6596.01, 6590, 6593.34]
                              },
                              {
                                "x": 1550250000000,
                                "y": [6593.34, 6604.76, 6582.63, 6593.86]
                              },
                              {
                                "x": 1550336400000,
                                "y": [6593.86, 6604.28, 6586.57, 6600.01]
                              },
                              {
                                "x": 1550422800000,
                                "y": [6601.81, 6603.21, 6592.78, 6596.25]
                              },
                              {
                                "x": 1550509200000,
                                "y": [6596.25, 6604.2, 6590, 6602.99]
                              },
                              {
                                "x": 1550595600000,
                                "y": [6602.99, 6606, 6584.99, 6587.81]
                              },
                              {
                                "x": 1550682000000,
                                "y": [6587.81, 6595, 6583.27, 6591.96]
                              },
                              {
                                "x": 1550768400000,
                                "y": [6591.97, 6596.07, 6585, 6588.39]
                              },
                              {
                                "x": 1550854800000,
                                "y": [6587.6, 6598.21, 6587.6, 6594.27]
                              },
                              {
                                "x": 1550941200000,
                                "y": [6596.44, 6601, 6590, 6596.55]
                              },
                              {
                                "x": 1551027600000,
                                "y": [6598.91, 6605, 6596.61, 6600.02]
                              },
                              {
                                "x": 1551114000000,
                                "y": [6600.55, 6605, 6589.14, 6593.01]
                              },
                              {
                                "x": 1551200400000,
                                "y": [6593.15, 6605, 6592, 6603.06]
                              },
                              {
                                "x": 1551286800000,
                                "y": [6603.07, 6604.5, 6599.09, 6603.89]
                              },
                              {
                                "x": 1551373200000,
                                "y": [6604.44, 6604.44, 6600, 6603.5]
                              },
                              {
                                "x": 1551459600000,
                                "y": [6603.5, 6603.99, 6597.5, 6603.86]
                              },
                              {
                                "x": 1551546000000,
                                "y": [6603.85, 6605, 6600, 6604.07]
                              },
                              {
                                "x": 1551632400000,
                                "y": [6604.98, 6606, 6604.07, 6606]
                              }
                            ]
                          }
                        ],
                        "chart": {
                          "height": 600,
                          "type": "candlestick",
                          "background": "#071E3D",
                        },
                        "title": {
                          "text": "CandleStick Chart - Category X-axis",
                          "align": "left"
                        },
                        "annotations": {
                          "xaxis": [
                            {
                              "x": "Oct 06 14:00",
                              "borderColor": "#fff",
                              "label": {
                                "borderColor": "#fff",
                                "style": {
                                  "fontSize": "12px",
                                  "color": "#fff",
                                  "background": "#fff"
                                },
                                "orientation": "horizontal",
                                "offsetY": 7,
                                "text": "Annotation Test"
                              }
                            }
                          ]
                        },
                        "tooltip": {
                          "enabled": true
                        },
                        "xaxis": {
                          "type": "category",
                          "labels": { }
                        },
                        "yaxis": {
                          "tooltip": {
                            "enabled": true
                          }
                        },
                        // "responsive": true,
                      }
                  ),

                  const ApexDart(
                    // controller: lineChartController,
                      options: {
                        "series": [
                          {
                            "name": "Website Blog",
                            "type": "column",
                            "data": [440, 505, 414, 671, 227, 413, 201, 352, 752, 320, 257, 160]
                          },
                          {
                            "name": "Social Media",
                            "type": "line",
                            "data": [23, 42, 35, 27, 43, 22, 17, 31, 22, 22, 12, 16]
                          }
                        ],
                        "chart": {
                          "height": 500,
                          "type": "line"
                        },
                        "stroke": {
                          "width": [0, 4]
                        },
                        "title": {
                          "text": "Traffic Sources"
                        },
                        "dataLabels": {
                          "enabled": true,
                          "enabledOnSeries": [1]
                        },
                        "labels": [
                          "01 Jan 2001",
                          "02 Jan 2001",
                          "03 Jan 2001",
                          "04 Jan 2001",
                          "05 Jan 2001",
                          "06 Jan 2001",
                          "07 Jan 2001",
                          "08 Jan 2001",
                          "09 Jan 2001",
                          "10 Jan 2001",
                          "11 Jan 2001",
                          "12 Jan 2001"
                        ],
                        "xaxis": {
                          "type": "datetime"
                        },
                        "yaxis": [
                          {
                            "title": {
                              "text": "Website Blog"
                            }
                          },
                          {
                            "opposite": true,
                            "title": {
                              "text": "Social Media"
                            }
                          }
                        ]
                      }
                  ),

                ],
              ),
            ),
            floatingActionButton: ApexChartAware(
              child: FloatingActionButton(
                onPressed: () async {
                  lineChartController.adjustViewHeight();

                  // lineChartController.downloadSvg();

                },
                child: const Icon(Icons.add),
              ),
            )
        ),
      )
    );
  }


  int _rand([int next = 100]) => Random().nextInt(next);

  List<int> randomizeData() => List.generate(10, (index) => _rand());


}
