import 'package:flutter/material.dart';
import 'package:unisan_quezon_website/widgets/navigation_drawer/drawer_item.dart';
import 'package:unisan_quezon_website/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)],
      ),
      child: Column(
        children: const <Widget>[
          NavigationDrawerHeader(),
          DrawerItem(
            title: "Home",
            icon: Icons.home,
            navigationPath: "home",
          ),
          DrawerItem(title: "Jobs", icon: Icons.work, navigationPath: "jobs"),
          DrawerItem(title: "About", icon: Icons.info, navigationPath: "about"),
        ],
      ),
    );
  }
}
