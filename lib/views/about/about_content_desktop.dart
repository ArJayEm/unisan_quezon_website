import 'package:flutter/cupertino.dart';
import 'package:unisan_quezon_website/widgets/call_to_action/call_to_action.dart';
import 'package:unisan_quezon_website/views/about/about_details.dart';

class AboutContentDesktop extends StatelessWidget {
  const AboutContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Details(),
        Expanded(
          child: Center(
            child: CallToAction(title: "See Barangays"),
          ),
        ),
      ],
    );
  }
}
