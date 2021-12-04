import 'package:flutter/material.dart';
import 'package:pro_drawer/pro_drawer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            ProDrawer.of(context).toggle();
          },
          icon: const Icon(
            Icons.menu,
          ),
        ),
      ),
    );
  }
}
