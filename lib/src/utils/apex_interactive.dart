


import 'package:flutter/widgets.dart';

class ApexInteractive extends StatelessWidget {

  const ApexInteractive({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      child: child,
    );
  }
}
