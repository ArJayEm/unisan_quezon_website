import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DetailsTitleStyle extends StatelessWidget {
  final String title;
  final SizingInformation sizingInformation;
  const DetailsTitleStyle(
      {Key? key, required this.sizingInformation, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextAlign textAlignment =
        sizingInformation.isDesktop ? TextAlign.left : TextAlign.center;
    double titleSize = sizingInformation.isMobile ? 50 : 80;
    return Text(
      title,
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
        sizingInformation.isDesktop ? TextAlign.left : TextAlign.center;
    double descriptionSize = sizingInformation.isMobile ? 16 : 21;
    return Text(text,
        style: TextStyle(fontSize: descriptionSize, height: 1.7),
        textAlign: textAlignment);
  }
}
