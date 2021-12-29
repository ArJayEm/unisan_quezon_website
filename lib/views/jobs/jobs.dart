import 'package:flutter/cupertino.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unisan_quezon_website/widgets/details/details_style.dart';

class Jobs extends StatefulWidget {
  const Jobs({Key? key}) : super(key: key);

  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  @override
  Widget build(BuildContext context) {
    const String callToActionTitle = "See list";

    return ScreenTypeLayout(
      mobile: Mobile(details: _details(), callToActionTitle: callToActionTitle),
      desktop:
          Desktop(details: _details(), callToActionTitle: callToActionTitle),
    );
  }

  Widget _details() {
    return const Details(
        titlePrefix: "We are",
        title: "HIRING",
        description:
            "Looking for a job? Check out our list and maybe there's one that fits your skills!");
  }
}
