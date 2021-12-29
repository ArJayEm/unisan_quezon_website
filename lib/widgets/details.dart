import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        TextAlign textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 50
                : 80;
        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 16
                : 21;

        return SizedBox(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Unisan, Quezon",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    height: 0.9,
                    fontSize: titleSize),
                textAlign: textAlignment,
              ),
              const SizedBox(height: 30),
              Text("A place to discover.",
                  style: TextStyle(fontSize: descriptionSize, height: 1.7),
                  textAlign: textAlignment)
            ],
          ),
        );
      },
    );
  }
}
