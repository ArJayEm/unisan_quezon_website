import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unisan_quezon_website/widgets/details/details_style.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String callToActionTitle = "Start exploring";

    return ScreenTypeLayout(
      mobile: Mobile(details: _details(), callToActionTitle: callToActionTitle),
      desktop:
          Desktop(details: _details(), callToActionTitle: callToActionTitle),
    );
  }

  Widget _details() {
    return const Details(
        titlePrefix: "Welcome to",
        title: "Unisan, Quezon",
        description:
            "Whether you're looking for an adventure, time to unwind, or have a great food experience, you can find them here.");
  }
}
