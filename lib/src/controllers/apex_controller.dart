

import 'dart:convert';
import 'package:apex_dart/src/utils/utils.dart';
import 'package:crossview/crossview.dart' show CrossViewController;
import 'package:universal_html/js.dart';
import 'apex_controller_interface.dart';


class ApexController implements ApexControllerAbstract {

  late final CrossViewController? _webViewController;

  bool _initialized = false;

  get initialized => _initialized;

  void init(CrossViewController controller) {
    _webViewController = controller;
    _initialized = true;
  }


  @override
  void update(Map<String, dynamic> options ) {

    try {
      _webViewController?.evalRawJavascript(
        "window.update(${jsonEncode(options)})",
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
      _webViewController?.evalRawJavascript(
        """
          ApexCharts.exec('chart', 'updateSeries', [{ data: ${jsonEncode(data)} }], true);
        """,
        inGlobalContext: true
      );
    }
    catch (e) {
      throw Exception("ApexDart: Failed to update chart series: $e");
    }


  }


  @override
  void downloadSvg() async {

    JsObject webViewController = await promiseToFuture(
        await _webViewController?.evalRawJavascript("window.dataURI();", inGlobalContext: true)
    );

    print("webViewController $webViewController");

    return _webViewController?.evalRawJavascript("window.dataURI();", inGlobalContext: true);
  }




}