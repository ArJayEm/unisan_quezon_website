import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:unisan_quezon_website/routing/route_names.dart';
import 'package:unisan_quezon_website/views/about/about.dart';
import 'package:unisan_quezon_website/views/destinations/destinations.dart';
import 'package:unisan_quezon_website/views/experiences/experiences.dart';
import 'package:unisan_quezon_website/views/home/home.dart';
import 'package:unisan_quezon_website/views/jobs/jobs.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  if (kDebugMode) {
    print('generateRoute: ${settings.name}');
  }
  switch (settings.name) {
    case homeRoute:
      return _getPageRoute(const Home());
    case jobsRoute:
      return _getPageRoute(const Jobs());
    case experiencesRoute:
      return _getPageRoute(const Experiences());
    case destinationsGoRoute:
      return _getPageRoute(const Destinations());
    case aboutRoute:
      return _getPageRoute(const About());
    default:
      return _getPageRoute(const Home());
  }
}

PageRoute _getPageRoute(Widget child) {
  return FadeRoute(
    child: child,
  );
}

class FadeRoute extends PageRouteBuilder {
  final Widget child;
  FadeRoute({required this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
