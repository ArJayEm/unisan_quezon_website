import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unisan_quezon_website/views/about/about_content_desktop.dart';
import 'package:unisan_quezon_website/views/about/about_content_mobile.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const AboutContentMobile(),
      desktop: const AboutContentDesktop(),
    );
  }
}
