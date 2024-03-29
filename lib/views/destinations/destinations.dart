import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unisan_quezon_website/widgets/details/details_style.dart';

class Destinations extends StatelessWidget {
  const Destinations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String callToActionTitle = "Take a tour";

    return ScreenTypeLayout(
      mobile: Mobile(details: _details(), callToActionTitle: callToActionTitle),
      desktop:
          Desktop(details: _details(), callToActionTitle: callToActionTitle),
    );
  }

  Widget _details() {
    return const Details(
        titlePrefix: "Explore lots of",
        title: "Destinations",
        description:
            "Discover historical places or great places to just eat or relax.");
  }
}
