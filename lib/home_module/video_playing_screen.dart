import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
class videoPlayerScreen extends StatelessWidget {
  String name;
  videoPlayerScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(name.toUpperCase()),
      leading: IconButton(icon: LineIcon.arrowCircleLeft(),onPressed: (){
        Navigator.pop(context);
      },),
      centerTitle: true,),
      body: Container(),
    );
  }
}
