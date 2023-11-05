


import 'package:crossview/crossview.dart' show CrossViewAware;
import 'package:flutter/widgets.dart';

class ApexChartAware extends StatelessWidget {

  const ApexChartAware({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CrossViewAware(child: child);
  }
}
