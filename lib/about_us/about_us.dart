import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pro_drawer/pro_drawer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
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
      body: Column(
        children: [
          Container(
            child: Image.asset('assets/images/doneby.png'),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
              elevation: 10,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 40.0,
                        backgroundImage: AssetImage('assets/images/sudarshan.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'B Sudarshan',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'CB.EN.U4CSE19008',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ))
                ],
              )),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
              elevation: 10,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Row(
                children: [
                  const Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 40.0,
                        backgroundImage: AssetImage('assets/images/mugunth.png'),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Mugunth J C',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'CB.EN.U4CSE19440',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ))
                ],
              )),
        ],
      ),
    );
  }
}

ListTile l = ListTile(
  leading: CircleAvatar(
    radius: 40.0,
    backgroundImage: AssetImage('images/blackpanther.jpeg'),
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(40),
  ),
  title: Text(
    'Mugunth J C',
    style: TextStyle(
        color: Color(0xff480838), fontSize: 20, fontWeight: FontWeight.bold),
  ),
  subtitle: Text('CB.EN.U4CSE19440'),
);
