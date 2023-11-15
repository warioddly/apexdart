
import 'package:apex_dart/src/controllers/apex_controller.dart';
import 'package:apex_dart/src/renderer/index.html.dart';
import 'package:crossview/crossview.dart';
import 'package:flutter/material.dart';


class ApexDart extends StatefulWidget {

  const ApexDart({
    super.key,
    required this.options,
    this.controller
  });

  final Map<String, dynamic> options;
  final ApexController? controller;

  @override
  State<ApexDart> createState() => _ApexDartState();
}

class _ApexDartState extends State<ApexDart> {

  late final ApexController controller;

  @override
  void initState() {
    super.initState();

    // if (widget.controller != null && widget.controller!.initialized) {
    //   throw FlutterError(
    //     "ApexDart: You cannot use the same controller for multiple charts."
    //   );
    // }

    controller = widget.controller ?? ApexController();

  }


  @override
  Widget build(BuildContext context) {

    return ListenableBuilder(
      listenable: controller,
      builder: (context, _) {
        return Center(
          child: SizedBox(
            height: controller.chartHeight,
            child: CrossView(
              initialContent: render(widget.options),
              initialSourceType: SourceType.html,
              onViewCreated: (_) => controller.init(_),
            ),
          ),
        );
      }
    );

  }


}

