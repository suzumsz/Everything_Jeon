import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class User {
  String name;
  String classNum;

  User(this.name, this.classNum);
}

class LocationPage extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LocationAppPage(),
    );
  }
}

class LocationAppPage extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<LocationAppPage> {
  var mainopacityValue = 0.0;
  var sportsopacityValue = 0.0;
  var lineopacityValue = 0.0;
  bool _trigger = true;

  final _firestore = Firestore.instance;
  final _currentUser = FirebaseAuth.instance.currentUser;

  Widget _buildItemWidget(DocumentSnapshot docs, int i) {
    final user = User(docs['Name'], docs['classNum']);

    switch (i) {
      case 1:
        {
          return Text(
            user.name + " [" + user.classNum + "]",
            style: TextStyle(
              fontFamily: 'DX유니고딕 20',
              fontSize: 13,
              color: const Color(0xff0a1736),
            ),
            textAlign: TextAlign.left,
          );
        }
        break;
      default:
    }
  }

  Widget _getDB(int i) {
    return StreamBuilder<DocumentSnapshot>(
        stream: _firestore.collection("User").doc(_currentUser.uid).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          final documents = snapshot.data;
          return Expanded(child: _buildItemWidget(documents, i));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            //header
            width: 414.0,
            height: 174.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25.0),
                bottomLeft: Radius.circular(25.0),
              ),
              color: const Color(0xffdfe6f3),
            ),
          ),
          Transform.translate(
            //header title
            offset: Offset(27.0, 56.0),
            child: Text(
              '위치',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'DX유니고딕 20',
                fontSize: 25,
                color: const Color(0xff0c1939),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            // 사용자 정보
            offset: Offset(265.0, 71.0),
            child: _getDB(1),
          ),
          Transform.translate(
            // 검색어 입력1
            offset: Offset(27.0, 112.0),
            child: Container(
              width: 168.0,
              height: 38.0,
              child: TextFormField(
                onChanged: (String input) {
                  setState(() {
                    if (input == "본관") {
                      mainopacityValue = 1.0;
                    }
                  });
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 12, right: 20),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: '검색어를 입력하세요.',
                  hintStyle: TextStyle(
                    fontFamily: 'DX유니고딕 20',
                    fontSize: 12,
                    color: const Color(0xff0c1939),
                    height: 1.5,
                  ),
                  prefixIconConstraints:
                      BoxConstraints(minWidth: 40, maxHeight: 20),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Icon(
                      Icons.search,
                      color: Color.fromRGBO(10, 23, 54, 1),
                      size: 20,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(19.0),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            // 오른쪽 화살표
            offset: Offset(203.0, 124.0),
            child: Container(
              width: 11,
              height: 13,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/rightarrow.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            // 검색어 입력2
            offset: Offset(220.0, 112.0),
            child: Container(
              width: 168.0,
              height: 38.0,
              child: TextFormField(
                onChanged: (String input) {
                  setState(() {
                    if (input == "사회교육관") {
                      sportsopacityValue = 1.0;
                      lineopacityValue = 1.0;
                    }
                  });
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 12, right: 20),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: '검색어를 입력하세요.',
                  hintStyle: TextStyle(
                    fontFamily: 'DX유니고딕 20',
                    fontSize: 12,
                    color: const Color(0xff0c1939),
                    height: 1.5,
                  ),
                  prefixIconConstraints:
                      BoxConstraints(minWidth: 40, maxHeight: 20),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Icon(
                      Icons.search,
                      color: Color.fromRGBO(10, 23, 54, 1),
                      size: 20,
                    ), // icon is 48px widget.
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(19.0),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: mainopacityValue,
            duration: Duration(seconds: 1),
            child: Transform.translate(
              // 본관 위치
              offset: Offset(150.0, 500.0),
              child: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('images/loc.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            // body title
            offset: Offset(27.0, 200.0),
            child: Text(
              '학교 지도',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'DX유니고딕 20',
                fontSize: 20,
                color: const Color(0xff0c1939),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          AnimatedOpacity(
            opacity: sportsopacityValue,
            duration: Duration(seconds: 1),
            child: Transform.translate(
              // 사교 위치
              offset: Offset(200.0, 420.0),
              child: Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('images/loc.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: lineopacityValue,
            duration: Duration(seconds: 1),
            child: Transform.translate(
              // 대각선
              offset: Offset(10.0, 10.0),
              child: CustomPaint(
                painter: MyPainter(),
              ),
            ),
          ),
          Transform.translate(
            // body title
            offset: Offset(27.0, 200.0),
            child: Text(
              '학교 지도',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 20,
                color: const Color(0xff0c1939),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            // 지도 이미지 파일
            offset: Offset(37.0, 258.0),
            child: Container(
              width: 341.0,
              height: 430.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/mapimage.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            // 지도 테두리
            offset: Offset(27.0, 241.0),
            child: Container(
              width: 361.0,
              height: 463.0,
              decoration: BoxDecoration(
                border: Border.all(width: 6.0, color: const Color(0xffdfe6f3)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(241.0, 71.0),
            child: Container(
              width: 21.0,
              height: 21.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            // 원형로고
            offset: Offset(243.0, 73.0),
            child: Container(
              width: 17.0,
              height: 17.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/circlelogo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(150.0, 500.0);
    final p2 = Offset(200.0, 420.0);
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 4;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
