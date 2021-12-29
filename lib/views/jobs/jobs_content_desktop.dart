import 'package:flutter/cupertino.dart';
import 'package:unisan_quezon_website/widgets/call_to_action/call_to_action.dart';
import 'package:unisan_quezon_website/views/jobs/jobs_details.dart';

class JobsContentDesktop extends StatelessWidget {
  const JobsContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Details(),
        Expanded(
          child: Center(
            child: CallToAction(title: "See list"),
          ),
        ),
      ],
    );
  }
}
