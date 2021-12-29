import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unisan_quezon_website/widgets/details/details_style.dart';

class Experiences extends StatelessWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String callToActionTitle = "Check them out";

    return ScreenTypeLayout(
      mobile: Mobile(details: _details(), callToActionTitle: callToActionTitle),
      desktop:
          Desktop(details: _details(), callToActionTitle: callToActionTitle),
    );
  }

  Widget _details() {
    return const Details(
        titlePrefix: "Create great",
        title: "Experiences",
        description:
            "Great food experience and relaxing vacation spots awaits you.");
  }
}
