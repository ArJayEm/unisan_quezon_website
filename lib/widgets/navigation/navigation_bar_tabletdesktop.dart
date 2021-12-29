import 'package:flutter/material.dart';
import 'package:unisan_quezon_website/widgets/navigation/navbar_item.dart';
import 'package:unisan_quezon_website/widgets/navigation/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              SizedBox(width: 60),
              NavBarItem(title: "Jobs", navigationPath: "jobs"),
              SizedBox(width: 60),
              NavBarItem(title: "About", navigationPath: "about"),
            ],
          )
        ],
      ),
    );
  }
}
