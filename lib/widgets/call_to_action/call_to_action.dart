import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unisan_quezon_website/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:unisan_quezon_website/widgets/call_to_action/call_to_action_tabletdesktop.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title: title),
      tablet: CallToActionTableDesktop(title: title),
    );
  }
}
