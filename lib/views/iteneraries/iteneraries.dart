import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unisan_quezon_website/widgets/details/details_style.dart';

class Iteneraries extends StatelessWidget {
  const Iteneraries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String callToActionTitle = "See plans";

    return ScreenTypeLayout(
      mobile: Mobile(details: _details(), callToActionTitle: callToActionTitle),
      desktop:
          Desktop(details: _details(), callToActionTitle: callToActionTitle),
    );
  }

  Widget _details() {
    return const Details(
        titlePrefix: "Plan your",
        title: "Iteneraries",
        description: "We've made some plans ready that you could choose from.");
  }
}
