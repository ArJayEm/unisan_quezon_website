import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unisan_quezon_website/constants/app_colors.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _callToActionWidget(title, isMobile: true),
      tablet: _callToActionWidget(title),
    );
  }

  Widget _callToActionWidget(String title, {bool isMobile = false}) {
    return Container(
      height: isMobile ? 60 : null,
      alignment: isMobile ? Alignment.center : null,
      padding: !isMobile
          ? const EdgeInsets.symmetric(horizontal: 60, vertical: 15)
          : null,
      child: Text(title,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white)),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(5)),
    );
  }
}
