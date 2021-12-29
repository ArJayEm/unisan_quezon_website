import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unisan_quezon_website/widgets/details/details_style.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return SizedBox(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DetailsTitleStyle(
                  sizingInformation: sizingInformation, title: "Our History"),
              const SizedBox(height: 30),
              DetailsTextStyle(
                  sizingInformation: sizingInformation,
                  text:
                      "Unisan, originally called Kalilayan, is perhaps one of the oldest towns in the Philippines. As early as 1521, the town of Kalilayan was founded by Malayan settlers. All other towns in the country were established not earlier than 1565, when Spain formally occupied the Philippines as a colony."),
              const SizedBox(height: 30),
              DetailsTextStyle(
                  sizingInformation: sizingInformation, text: "Barangays: 36"),
              DetailsTextStyle(
                  sizingInformation: sizingInformation,
                  text: "Founded: February 18, 1876"),
            ],
          ),
        );
      },
    );
  }
}
