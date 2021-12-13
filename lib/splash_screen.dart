import 'dart:async';
import 'package:flutter/material.dart';
import 'package:indian_sign_languages/landing_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isVisible = false;

  _SplashScreenState() {
    new Timer(const Duration(milliseconds: 2000), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => LandingScreen()), // have to chage here to LandingPage()
            (route) => false);
      });
    });

    new Timer(Duration(milliseconds: 10), () {
      setState(() {
        _isVisible =
            true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [Color(0xff4DE2EB), Theme.of(context).primaryColor],
          begin: const FractionalOffset(0, 0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: _isVisible ? 1.0 : 0,
            duration: Duration(milliseconds: 1200),
            child: Center(
              child: Container(
                height: 140.0,
                width: 140.0,
                child: Center(
                  child: ClipOval(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/icon.png',
                      ),
                      radius: 128,
                    ), //put your logo here
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 2.0,
                        offset: Offset(5.0, 3.0),
                        spreadRadius: 2.0,
                      )
                    ]),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 50.0,
                fontFamily: 'MoonTime',
                color: Color(0xffff7cbf)
                // color: Color(0xffffed00)
              ),
              child: AnimatedTextKit(animatedTexts: [
                TypewriterAnimatedText('Indian Sign Languages!'),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
