import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'LoginPage.dart';
import 'ReservationPage.dart';
import 'NoticePage.dart';
import 'LocationPage.dart';
import 'SettingPage.dart';
import 'XDinfo_list.dart';
import 'XDres.dart';
import 'Visibility_.dart';
import 'JoinPage.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/LoginPage': (context) => LoginPage(),
        '/ReservationPage': (context) => ReservationPage(),
        '/NoticePage': (context) => NoticePage(),
        '/LocationPage': (context) => LocationPage(),
        '/SettingPage': (context) => SettingPage(),
        '/XDinfo_list': (context) => XDinfo_list_tab(0),
        '/XDres': (context) => XDres(),
        '/Visibility_': (context) => Visibility_(),
        '/JoinPage': (context) => JoinPage(),
      },
    );
  }
}

/*import 'package:everything_jeon/NoticePage.dart';
import 'package:everything_jeon/ReservationPage.dart';
import 'package:everything_jeon/Sign_up.dart';
import 'package:flutter/material.dart';

import 'LocationPage.dart';
import 'LoginPage.dart';
import 'SettingPage.dart';

void main() => runApp(
      MaterialApp(
        title: 'Responsive Layout',
        home: MyApp(),
        debugShowCheckedModeBanner: false,
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Important: Remove any padding from the ListView.
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('회원가입'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Sign_up()));
            },
          ),
          ListTile(
            title: Text('예약하기'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ReservationPage()));
            },
          ),
          ListTile(
            title: Text('공지사항'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NoticePage()));
            },
          ),
          ListTile(
            title: Text('위치'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LocationPage()));
            },
          ),
          ListTile(
            title: Text('로그인'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
          ListTile(
            title: Text('설정'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingPage()));
            },
          ),
        ],
      ),
    );
  }
}*/
