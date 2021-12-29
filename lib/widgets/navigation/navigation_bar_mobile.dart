import 'package:flutter/material.dart';
import 'package:unisan_quezon_website/widgets/navigation/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
