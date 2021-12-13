import 'package:animated_button/animated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:share_plus/share_plus.dart';

class ShareUs extends StatelessWidget {
  const ShareUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share About Us'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            ProDrawer.of(context).toggle();
          },
          icon: const Icon(
            Icons.menu,
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/images/share.png',
                fit: BoxFit.fill,
              ),
            ),
            AnimatedButton(
              onPressed: () async{
                await Share.share('Check out our app on https://github.com/tabspacecoder/indian_sign_languages', subject: 'An app on indian sign languages!');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(LineIcons.share,color: Colors.white,size: 35,),
                  Text('Share',style: TextStyle(color: Colors.white,fontSize: 30),)
                ],
              ),
              duration: 30,
              color: Color(0xffff7cbf),
            ),
          ],
        ),
      ),
    );
  }
}
