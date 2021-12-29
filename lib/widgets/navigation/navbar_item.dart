import 'package:flutter/material.dart';
import 'package:unisan_quezon_website/locator.dart';
import 'package:unisan_quezon_website/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;

  const NavBarItem({Key? key, required this.title, required this.navigationPath}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(title, style: const TextStyle(fontSize: 18)));
  }
}
