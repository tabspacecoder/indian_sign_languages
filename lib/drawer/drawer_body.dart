import 'package:flutter/material.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:indian_sign_languages/widget/global_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'drawer_menu.dart';

class DrawerBody extends StatelessWidget {
   const DrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    Column(
      children: DrawerMenus.all
          .map(
            (item) => ListTile(
              leading: item.icon,
              title: GlobalText(
                str: item.title,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              onTap: () {
                ProDrawer.of(context).setPage(item);
              },
            ),
          )
          .toList(),
    ),
    SizedBox(
      height: 10.h,
    ),

    SizedBox(
      height: 30.h,
    ),
      ],
    );
  }
}
