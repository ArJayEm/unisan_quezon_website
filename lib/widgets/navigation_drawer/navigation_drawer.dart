import 'package:flutter/material.dart';
import 'package:unisan_quezon_website/widgets/navigation/navigation_bar.dart';
import 'package:unisan_quezon_website/constants/app_colors.dart';

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

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Text("VISIT US NOW", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white)),
          Text("TAP HERE", style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;

  const DrawerItem({Key? key, required this.title, required this.icon, required this.navigationPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 50, top: 60),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 30),
            NavBarItem(title: title, navigationPath: navigationPath)
          ],
        ),);
  }
}
