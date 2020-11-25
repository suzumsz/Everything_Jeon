import 'package:everything_jeon/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          Transform.translate(
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
                    text: '정혜진',
                  ),
                  TextSpan(
                    text:
                        '\n생년월일 : 1997. 04. 29\n학과 : 산업디자인(예술건강학부)\n학번 : 2020581015\n학적상태 : 재학(전공심화)\n\n*정보 수정은 학교 홈페이지 이용 바랍니다.',
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
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
                    _signOut();

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

_signOut() async {
  await _firebaseAuth.signOut();
  print('signInEmail succeeded: $_signOut');
}
