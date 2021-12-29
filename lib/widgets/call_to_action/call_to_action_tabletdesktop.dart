import 'package:flutter/material.dart';
import 'package:unisan_quezon_website/constants/app_colors.dart';

class CallToActionTableDesktop extends StatelessWidget {
  final String title;
  const CallToActionTableDesktop({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Text(title,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white)),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(5)),
    );
  }
}
