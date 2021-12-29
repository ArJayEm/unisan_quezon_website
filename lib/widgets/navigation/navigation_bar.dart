import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:unisan_quezon_website/locator.dart';
import 'package:unisan_quezon_website/services/navigation_service.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: _mobileNavBar(),
      desktop: _desktopNavBar(),
    );
  }

  Widget _mobileNavBar() {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          const NavBarLogo()
        ],
      ),
    );
  }

  Widget _desktopNavBar() {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              NavBarItem(title: "Home", navigationPath: "home"),
              // SizedBox(width: 60),
              // NavBarItem(title: "Jobs", navigationPath: "jobs"),
              SizedBox(width: 60),
              NavBarItem(title: "Destinations", navigationPath: "destinations"),
              SizedBox(width: 60),
              NavBarItem(title: "Experiences", navigationPath: "experiences"),
              SizedBox(width: 60),
              NavBarItem(title: "Iteneraries", navigationPath: "iteneraries"),
              SizedBox(width: 60),
              NavBarItem(title: "About", navigationPath: "about"),
            ],
          )
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;

  const NavBarItem(
      {Key? key, required this.title, required this.navigationPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
        },
        child: Text(title, style: const TextStyle(fontSize: 18)));
  }
}

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: Image.asset("assets/icons/unisan_logo.png"),
    );
  }
}
