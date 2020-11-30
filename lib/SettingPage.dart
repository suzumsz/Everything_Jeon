import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:everything_jeon/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class User {
  String name;
  String birth;
  String depart;
  String classNum;
  String state;

  User(this.name, this.birth, this.depart, this.classNum, this.state);
}

class SettingPage extends StatelessWidget {
  final _firestore = Firestore.instance;
  final _currentUser = FirebaseAuth.instance.currentUser;

  Widget _buildItemWidget(DocumentSnapshot docs, int i) {
    final user = User(docs['Name'], docs['Birth'], docs['Department'],
        docs['classNum'], docs['State']);
    String barcode = user.classNum + "30";

    switch (i) {
      case 1:
        {
          return Transform.translate(
            offset: Offset(140.0, 126.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'DX유니고딕 20',
                  fontSize: 17,
                  color: const Color(0xff0c1939),
                ),
                children: [
                  TextSpan(
                    text: user.name,
                  ),
                  TextSpan(
                    text: '\n생년월일 : ' +
                        user.birth +
                        '\n학과 : ' +
                        user.depart +
                        '\n학번 : ' +
                        user.classNum +
                        '\n학적상태 : ' +
                        user.state +
                        '\n\n*정보 수정은 학교 홈페이지 이용 바랍니다.',
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
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
    void _showDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Log out"),
            content: new Text("로그아웃 되었습니다."),
            actions: <Widget>[
              new FlatButton(
                child: new Text("닫기"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(40.0, 290.0),
            child: Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffdfe6f3),
                image: DecorationImage(
                  image: const AssetImage('images/circlelogo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(27.0, 57.0),
            child: Text(
              '설정',
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
            offset: Offset(35.0, 319.0),
            child: Container(
              width: 345.0,
              height: 74.0,
              decoration: BoxDecoration(
                color: const Color(0x66dfe6f3),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(57.2, 288.0),
            child: SizedBox(
              width: 118.0,
              child: Text(
                '지원 부서 연락',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DX유니고딕 20',
                  fontSize: 15,
                  color: const Color(0xff0c1939),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(27.8, 336.0),
            child: SizedBox(
              width: 362.0,
              child: Text(
                '오류관련 문의 - mjcmobileidcard@gmail.com\n문의전화 070 1234 1234',
                style: TextStyle(
                  fontFamily: 'DX유니고딕 20',
                  fontSize: 15,
                  color: const Color(0xff0c1939),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(27.0, 111.0),
            child: Container(
              width: 361.0,
              height: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(width: 3.0, color: const Color(0xffdfe6f3)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(42.0, 125.0),
            child: Container(
              width: 81.0,
              height: 81.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffdfe6f3),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(47.5, 130.0),
            child: Container(
              width: 71.0,
              height: 71.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                image: DecorationImage(
                  image: const AssetImage('images/setlogo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          _getDB(1),
          Transform.translate(
            offset: Offset(288.0, 125.0),
            child: Container(
              width: 85.0,
              height: 35.0,
              child: RaisedButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: const Color(0xffdfe6f3),
                  /*decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                color: const Color(0xffdfe6f3),
                */

                  //Transform.translate(
                  //offset: Offset(319.5, 128.5),
                  //child: RaisedButton(
                  child: Text(
                    'Log out',
                    style: TextStyle(
                      fontFamily: 'DX유니고딕 20',
                      fontSize: 15,
                      color: const Color(0xff0c1939),
                    ),
                    //textAlign: TextAlign.left,
                  ),
                  onPressed: () async {
                    // _signOut();
                    _showDialog();
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

/*
_signOut() async {
  await _firebaseAuth.signOut();
  print('signInEmail succeeded: $_signOut');
}
*/
