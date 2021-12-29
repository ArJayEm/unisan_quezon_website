import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unisan_quezon_website/views/jobs/jobs_content_desktop.dart';
import 'package:unisan_quezon_website/views/jobs/jobs_content_mobile.dart';

class Jobs extends StatefulWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const JobsContentMobile(),
      desktop: const JobsContentDesktop(),
    );
  }
}
