import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:rolling_switch/rolling_switch.dart';

import '../main.dart';


class ProDrawerHeader extends StatelessWidget {
  const ProDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, top: 20.h, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                ProDrawer.of(context).toggle();
              },
              child: LineIcon.arrowCircleLeft(),
            ),
            Container(
              child: Image.asset('assets/images/logo.png',fit: BoxFit.fill,),
            ),
            Center(
              child: RollingSwitch.icon(
                onChanged: (bool state) {
                  MyApp.themeNotifier.value =
                  MyApp.themeNotifier.value == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
                },
                rollingInfoLeft:  const RollingIconInfo(
                  icon: LineIcons.sun,
                  text: Text('Light'),
                  backgroundColor: Colors.amber,
                ),
                rollingInfoRight:  const RollingIconInfo(
                  icon: LineIcons.moon,
                  backgroundColor: Color(0xff242526),
                  text: Text('Dark',style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffe8e8e8),
            ),

          ],
        ),
      ),
    );
  }
}
