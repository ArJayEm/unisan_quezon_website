import 'package:flutter/material.dart';
import 'package:unisan_quezon_website/widgets/navigation/navbar_item.dart';

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
