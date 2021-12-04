import 'package:line_icons/line_icon.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:indian_sign_languages/home_module/home_screen.dart';
import 'package:indian_sign_languages/about_us/about_us.dart';
import 'package:indian_sign_languages/share_us/share_us.dart';


class DrawerMenus {
  static final home = DrawerMenu(
      icon: LineIcon.home(),
      title: "Home",
      screen: const HomeScreen());
  static final aboutUs = DrawerMenu(
      icon: LineIcon.user(),
      title: "About Us",
      screen: const AboutUs());
  static final share = DrawerMenu(
      icon: LineIcon.share(),
      title: "Share",
      screen: const ShareUs());

  static final all = <DrawerMenu>[
    home,
    aboutUs,
    share,
  ];

}
