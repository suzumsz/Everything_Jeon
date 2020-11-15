import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'LoginPage.dart';
import 'ReservationPage.dart';
import 'NoticePage.dart';
import 'LocationPage.dart';
import 'SettingPage.dart';
import 'XDinfo_list.dart';
import 'XDres.dart';

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
        '/XDinfo_list': (context) => XDinfo_list(),
        '/XDres': (context) => XDres(),
      },
    );
  }
}
