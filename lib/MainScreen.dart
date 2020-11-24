import 'package:everything_jeon/LocationPage.dart';
import 'package:everything_jeon/MainPage.dart';
import 'package:everything_jeon/NoticePage.dart';
import 'package:everything_jeon/ReservationPage.dart';
import 'package:flutter/material.dart';
import 'SettingPage.dart';
import 'package:flutter_icons/flutter_icons.dart';

const PrimaryColor = Color.fromRGBO(32, 80, 114, 1);
const SecondaryColor = Color.fromRGBO(166, 185, 198, 1);
const BtnColor = Color.fromRGBO(160, 181, 219, 1);

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    ReservationPage(),
    LocationPage(),
    NoticePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new FloatingActionButton(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => MainPage(),
          ));
          // Navigator.push(
          //   context, MaterialPageRoute(builder: (context) => FloatPage()));
        },
        child: new Icon(
          Icons.add,
          color: PrimaryColor,
        ),
        backgroundColor: BtnColor,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 9,
        color: Colors.blue,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              //backgroundColor: Colors.white,
              icon: ImageIcon(
                AssetImage("images/resericon.png"),
                color: SecondaryColor,
                size: 30,
              ),

              //Icon(
              //Feather.settings,
              //color: SecondaryColor,
              //size: 30,

              title: Text('예약'),
              activeIcon: ImageIcon(
                AssetImage("images/resericon.png"),
                color: PrimaryColor,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("images/locicon.png"),
                color: SecondaryColor,
                size: 30,
              ),
              title: Text('위치'),
              activeIcon: ImageIcon(
                AssetImage("images/locicon.png"),
                color: PrimaryColor,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("images/noticeicon.png"),
                color: SecondaryColor,
                size: 30,
              ),
              title: Text('공지'),
              activeIcon: ImageIcon(
                AssetImage("images/noticeicon.png"),
                color: PrimaryColor,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("images/seticon.png"),
                color: SecondaryColor,
                size: 30,
              ),
              title: Text('설정'),
              activeIcon: ImageIcon(
                AssetImage("images/seticon.png"),
                color: PrimaryColor,
                size: 30,
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      body: Stack(
        children: [
          _buildOffstageNavigator(0),
          _buildOffstageNavigator(1),
          _buildOffstageNavigator(2),
          _buildOffstageNavigator(3),
        ],
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          ReservationPage(),
          LocationPage(),
          NoticePage(),
          SettingPage(),
        ].elementAt(index);
      },
    };
  }

  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedIndex != index,
      child: Navigator(
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name](context),
          );
        },
      ),
    );
  }
}
