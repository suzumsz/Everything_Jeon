import 'package:flutter/material.dart';

class Visibility_ extends StatefulWidget {
  @override
  _VisibilityState createState() => _VisibilityState();
}

class _VisibilityState extends State<Visibility_> {
  bool a = true;
  String mText = "Press to hide";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Visibility",
      home: new Scaffold(
          body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new RaisedButton(
            onPressed: _visibilitymethod,
            child: new Text(mText),
          ),
          a == true
              ? new Container(
                  child: Text('진원아 화이팅 여기안에 textformfield넣음돼~!~!',
                      style: TextStyle(fontSize: 30)),
                  width: 300.0,
                  height: 300.0,
                  color: Colors.red,
                )
              : new Container(),
        ],
      )),
    );
  }

  void _visibilitymethod() {
    setState(() {
      if (a) {
        a = false;
        mText = "Press to show";
      } else {
        a = true;
        mText = "Press to hide";
      }
    });
  }
}
