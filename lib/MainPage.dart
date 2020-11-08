import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MainPage'),
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey),
              title: Text('LoginPage'),
              onTap: () {
                Navigator.pushNamed(context, '/LoginPage');
              },
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: Text('ReservationPage'),
              onTap: () {
                Navigator.pushNamed(context, '/ReservationPage');
              },
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: Text('NoticePage'),
              onTap: () {
                Navigator.pushNamed(context, '/NoticePage');
              },
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: Text('LocationPage'),
              onTap: () {
                Navigator.pushNamed(context, '/LocationPage');
              },
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: Text('SettingPage'),
              onTap: () {
                Navigator.pushNamed(context, '/SettingPage');
              },
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
