import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unisan_quezon_website/locator.dart';
import 'package:unisan_quezon_website/routing/route_names.dart';
import 'package:unisan_quezon_website/routing/router.dart';
import 'package:unisan_quezon_website/services/navigation_service.dart';
import 'package:unisan_quezon_website/widgets/navigation/navigation_bar.dart'
    as nav;
import 'package:unisan_quezon_website/widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              const nav.NavigationBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: homeRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CenteredView extends StatelessWidget {
  final Widget child;

  const CenteredView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 70),
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200), child: child));
  }
}
