import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unisan_quezon_website/widgets/details/details_style.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    const String callToActionTitle = "See barangays";

    return ScreenTypeLayout(
      mobile: Mobile(details: _details(), callToActionTitle: callToActionTitle),
      desktop:
          Desktop(details: _details(), callToActionTitle: callToActionTitle),
    );
  }

  Widget _details() {
    return const Details(
        titlePrefix: "Learn Our",
        title: "HISTORY",
        description:
            "Unisan, originally called Kalilayan, is perhaps one of the oldest towns in the Philippines. As early as 1521, the town of Kalilayan was founded by Malayan settlers. All other towns in the country were established not earlier than 1565, when Spain formally occupied the Philippines as a colony.");
  }
  // const SizedBox(height: 30),
  // DetailsTextStyle(
  // sizingInformation: sizingInformation, text: "Barangays: 36"),
  // DetailsTextStyle(
  // sizingInformation: sizingInformation,
  // text: "Founded: February 18, 1876"),
}
