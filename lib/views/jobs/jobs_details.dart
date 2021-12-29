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
              DetailsTitleStyle(sizingInformation: sizingInformation, title: "We're Hiring!"),
              const SizedBox(height: 30),
              DetailsTextStyle(sizingInformation: sizingInformation, text: "Looking for a job? Check out our list and maybe there's one that fits your skills!")
            ],
          ),
        );
      },
    );
  }
}
