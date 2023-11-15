
import 'dart:convert';
import 'package:crossview/crossview.dart' show CrossViewController;
import 'package:flutter/material.dart';
import 'apex_controller_interface.dart';


class ApexController extends ChangeNotifier implements ApexControllerAbstract {

  late final CrossViewController? _webViewController;

  bool _initialized = false;
  get initialized => _initialized;

  double _chartHeight = 0.1;


  @override
  double get chartHeight => _chartHeight;


  void init(CrossViewController controller) {
    _webViewController = controller;
    _initialized = true;
    Future.delayed(const Duration(milliseconds: 1000), () => adjustViewHeight());
  }


  @override
  void update(Map<String, dynamic> options ) {

    try {
      _webViewController?.runJavaScript(
          "ApexCharts.exec('chart', 'update', ${jsonEncode(options)}, true);",
          inGlobalContext: true
      );
    }
    catch (e) {
      throw Exception("ApexDart: Failed to update chart: $e");
    }


  }


  @override
  void updateSeries({ required Map<String, dynamic> data }) {

    try {
      _webViewController?.runJavaScript(
        "ApexCharts.exec('chart', 'updateSeries', [{ data: ${jsonEncode(data)} }], true);",
        inGlobalContext: true
      );
    }
    catch (e) {
      throw Exception("ApexDart: Failed to update chart series: $e");
    }


  }


  @override
  void downloadSvg() async {

    throw Exception("ApexDart: downloadSvg() is not supported");
    // JsObject webViewController = await promiseToFuture(await _webViewController?.callJsMethod("dataURI", []));
    //
    // print("webViewController ${webViewController.toString()}");
    // print("webViewController ${await _webViewController?.callJsMethod("JsonBuetify", [await _webViewController?.callJsMethod("dataURI", [])])}");

  }


  @override
  Future<double?> getChartHeight() async {

    try {
      double? height = await _webViewController?.callJsMethod("getChartHeight", []);
      return height;
    }
    catch (e) {
      throw Exception("ApexDart: Failed to get chart height: $e");
    }

  }


  @override
  void adjustViewHeight() async {

    double height = await getChartHeight() ?? 0.0;

    if (height == 0) {
      Future.delayed(const Duration(milliseconds: 1000), () => adjustViewHeight());
      notifyListeners();
      return;
    }

    _chartHeight = height;

    notifyListeners();

  }


}