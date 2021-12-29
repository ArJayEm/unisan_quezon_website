import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unisan_quezon_website/widgets/call_to_action/call_to_action.dart';

class DetailsTitleStyle extends StatelessWidget {
  final String title;
  final SizingInformation sizingInformation;
  const DetailsTitleStyle(
      {Key? key, required this.sizingInformation, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextAlign textAlignment =
        sizingInformation.deviceScreenType == DeviceScreenType.desktop
            ? TextAlign.left
            : TextAlign.center;
    double titleSize =
        sizingInformation.deviceScreenType == DeviceScreenType.mobile ? 50 : 80;
    return Text(
      title, //.toUpperCase()
      style: TextStyle(
          fontWeight: FontWeight.w800, height: 0.9, fontSize: titleSize),
      textAlign: textAlignment,
    );
  }
}

class DetailsTextStyle extends StatelessWidget {
  final String text;
  final SizingInformation sizingInformation;
  const DetailsTextStyle(
      {Key? key, required this.sizingInformation, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextAlign textAlignment =
        sizingInformation.deviceScreenType == DeviceScreenType.desktop
            ? TextAlign.left
            : TextAlign.center;
    double descriptionSize =
        sizingInformation.deviceScreenType == DeviceScreenType.mobile ? 16 : 21;
    return Text(text,
        style: TextStyle(fontSize: descriptionSize, height: 1.7),
        textAlign: textAlignment);
  }
}

class Details extends StatelessWidget {
  final String titlePrefix;
  final String title;
  final String description;

  const Details(
      {Key? key,
      required this.title,
      required this.titlePrefix,
      required this.description})
      : super(key: key);

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
              if (titlePrefix.isNotEmpty)
                DetailsTextStyle(
                    sizingInformation: sizingInformation, text: titlePrefix),
              if (titlePrefix.isNotEmpty) const SizedBox(height: 10),
              DetailsTitleStyle(
                  sizingInformation: sizingInformation, title: title),
              const SizedBox(height: 30),
              DetailsTextStyle(
                  sizingInformation: sizingInformation, text: description)
            ],
          ),
        );
      },
    );
  }
}

class Mobile extends StatelessWidget {
  final Widget details;
  final String callToActionTitle;

  const Mobile(
      {Key? key, required this.details, required this.callToActionTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        details,
        Expanded(
          child: Center(
            child: CallToAction(title: callToActionTitle),
          ),
        ),
      ],
    );
  }
}

class Desktop extends StatelessWidget {
  final Widget details;
  final String callToActionTitle;

  const Desktop(
      {Key? key, required this.details, required this.callToActionTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        details,
        const SizedBox(height: 100),
        CallToAction(title: callToActionTitle)
      ],
    );
  }
}
