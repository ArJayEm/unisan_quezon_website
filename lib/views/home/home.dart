import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unisan_quezon_website/views/home/home_content_desktop.dart';
import 'package:unisan_quezon_website/views/home/home_content_mobile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const HomeContentMobile(),
      desktop: const HomeContentDesktop(),
    );
  }
}
