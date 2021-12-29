import 'package:flutter/material.dart';
import 'package:unisan_quezon_website/widgets/call_to_action/call_to_action.dart';
import 'package:unisan_quezon_website/views/about/about_details.dart';

class AboutContentMobile extends StatelessWidget {
  const AboutContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: const <Widget>[
        Details(),
        SizedBox(height: 100),
        CallToAction(title: "See Barangays")
      ],
    );
  }
}
