
import 'package:apex_dart/src/renderer/index.html.dart';
import 'package:crossview/crossview.dart';
import 'package:flutter/material.dart';


class ApexDart extends StatefulWidget {

  const ApexDart({ super.key });


  @override
  State<ApexDart> createState() => _ApexDartState();
}

class _ApexDartState extends State<ApexDart> {

  late CrossViewController webViewController;

  bool _jsEvaluating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CrossView(
        initialContent: INDEX_HTML,
        initialSourceType: SourceType.html,
        onWebViewCreated: (controller) {

          webViewController = controller;

          webViewController.loadContent(INDEX_HTML, SourceType.html);


        }
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {

          try {

            if (_jsEvaluating) {
              print("WAIT FOR JS EVALUATION");
              return;
            }

            _jsEvaluating = true;

            await webViewController.callJsMethod("window.update", []);

            Future.delayed(const Duration(seconds: 1), () => _jsEvaluating = false);

          }
          catch (e) {
            Future.delayed(const Duration(seconds: 1), () => _jsEvaluating = false);
            print(e);
          }
        },
      )
    );
  }



}

