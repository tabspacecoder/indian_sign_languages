import 'package:flutter/material.dart';
import 'package:indian_sign_languages/main.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'drawer/drawer_body.dart';
import 'drawer/drawer_header.dart';
import 'home_module/home_screen.dart';


class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProDrawer(
      xOffset: 250,
      drawerHeader:  ProDrawerHeader(),
      drawerBackgroundColor: MyApp.themeNotifier.value == ThemeMode.light ? Colors.amber:Colors.black54,
      drawerBody:   DrawerBody(),
      initialPage:  HomeScreen(),
      drawerAnimationDuration: Duration(milliseconds: 300),
    );
  }
}



