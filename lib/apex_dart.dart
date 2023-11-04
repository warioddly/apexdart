
library apex_dart;
import 'package:apex_dart/src/renderer/index.html.dart';
import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';


class ApexDart extends StatefulWidget {

  const ApexDart({super.key});

  @override
  State<ApexDart> createState() => _ApexDartState();
}

class _ApexDartState extends State<ApexDart> {

  late WebViewXController webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewX(
        initialContent: INDEX_HTML,
        initialSourceType: SourceType.html,
        onWebViewCreated: (controller) => webViewController = controller,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          webViewController.callJsMethod("updateOptions", []);
        },
      )
    );
  }



}
