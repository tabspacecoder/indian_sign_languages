import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:indian_sign_languages/home_module/video_playing_screen.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:indian_sign_languages/widget/global_text.dart';
import 'package:rolling_switch/rolling_switch.dart';
import 'package:searchbar_animation/searchbar_animation.dart';
import 'package:switcher_button/switcher_button.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'dart:io' show Platform;

import '../main.dart';

List<String> pushList = [];
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool nightmode=true;
  TextEditingController search= TextEditingController();
  int gridcount=2;
  List<String> words = ['ask','angry','cry','phone','how','who','eat','help','play','which','why','where','yes','love','good','drink','here','money'];
  List<String> displayWords= [];
  bool searchResult = true;
  List<Widget> getlistofitems() {
    setState(() {});
    List<Bounceable> ret=[];
    int len;
    if(searchResult == true){
      if(displayWords.length == 0){
        len=words.length;
        for (int i=0;i<len;i++){
          Bounceable temp =Bounceable(
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset('assets/images/${words[i]}.png',fit: BoxFit.fill,),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
            onTap: (){
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, child: videoPlayerScreen(name: words[i],)));
            },
          );
          ret.add(temp);
        }
        return ret;
      }
      else{
        len=displayWords.length;
        for (int i=0;i<len;i++){
          Bounceable temp =Bounceable(
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.asset('assets/images/${displayWords[i]}.png',fit: BoxFit.fill,),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
            onTap: (){
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, child: videoPlayerScreen(name: displayWords[i],)));
            },
          );
          ret.add(temp);
        }
        return ret;
      }
    }
    else{
      return [Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('No Results Found!'),),
          ],
        ),
      )];
    }
  }
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      gridcount=2;
    } else if (Platform.isIOS) {
      gridcount=2;
    }
    else{
      gridcount=4;
    }
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
          icon: LineIcon.bars(),
          onPressed:(){
            ProDrawer.of(context).toggle();
            } ,
        ),
        centerTitle: true,
        title: Text(
          "Indian Sign Languages",
          style: TextStyle(fontFamily: 'MoonTime',fontWeight: FontWeight.w500,
          fontSize: 32),


        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SwitcherButton(
                value: nightmode,
                onChange: (value) {
                  MyApp.themeNotifier.value =
                  MyApp.themeNotifier.value == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
                  // value?MyApp.of(context)!.changeTheme(ThemeMode.light):MyApp.of(context)!.changeTheme(ThemeMode.dark);
                  nightmode=!nightmode;
                },
              )
            ],
          )
        ],


      ),
      body: SafeArea(
        child: Column(
          children: [
            SearchBarAnimation(
              textEditingController: search,
              durationInMilliSeconds: 500,
              isOriginalAnimation: false,
              buttonBorderColour: Colors.black45,
              buttonIcon: LineIcons.search,
              enableKeyboardFocus: true,
              onChanged: (String value){
                searchResult=true;
                displayWords=[];
                value.split(' ').forEach((s) {
                  displayWords.addAll(words.where((element) => element.contains(s)));
                });
                displayWords = displayWords.toSet().toList();
                if (displayWords.length == 0){
                      searchResult=false;
                }
                if(search.value.toString() == ''){
                  displayWords=words;
                }
                setState(() {});
              },
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: gridcount,
                childAspectRatio: (1 / 1),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                padding: EdgeInsets.all(10.0),
                children:getlistofitems(),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
