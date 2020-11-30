import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';
import 'package:everything_jeon/ScrollingText.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainPage());
}

class User {
  String name;
  String birth;
  String depart;
  String classNum;
  String state;

  User(this.name, this.birth, this.depart, this.classNum, this.state);
}

class MainPage extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sample App',
      home: MainAppPage(),
    );
  }
}

class MainAppPage extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<MainAppPage> {
  final _firestore = Firestore.instance;
  final _currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    Widget _buildItemWidget(DocumentSnapshot docs, int i) {
      final user = User(docs['Name'], docs['Birth'], docs['Department'],
          docs['classNum'], docs['State']);
      String barcode = user.classNum + "30";

      switch (i) {
        case 1:
          {
            return Text(user.name,
                style: TextStyle(
                    fontSize: 19, color: Color.fromRGBO(12, 25, 57, 1)));
          }
          break;

        case 2:
          {
            return Text("생년월일 : " + user.birth,
                style: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(12, 25, 57, 1)));
          }
          break;

        case 3:
          {
            return Text("학과 : " + user.depart,
                style: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(12, 25, 57, 1)));
          }
          break;

        case 4:
          {
            return Text("학번 : " + user.classNum,
                style: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(12, 25, 57, 1)));
          }
          break;

        case 5:
          {
            return Text("학적상태 : " + user.state,
                style: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(12, 25, 57, 1)));
          }
          break;
        case 6:
          {
            return SfBarcodeGenerator(
              value: "$barcode",
              showValue: true,
            );
          }
          break;

        default:
      }
    }

    Widget _getDB(int i) {
      return StreamBuilder<DocumentSnapshot>(
          stream:
              _firestore.collection("User").doc(_currentUser.uid).snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            }
            final documents = snapshot.data;
            return Expanded(child: _buildItemWidget(documents, i));
          });
    }

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      //------------ 여기서부터 body ------------------------
      backgroundColor: Color.fromRGBO(223, 230, 243, 1),
      body: Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        direction: Axis.horizontal,

        //crossAxisAlignment: CrossAxisAlignment.start,

        children: <Widget>[
          Container(
            //명지전문대학 로고 div
            margin: const EdgeInsets.only(
                left: 12.0, top: 90.0, right: 0.0, bottom: 0.0),
            width: 225,
            height: 50,
            child: Image.asset(
              'images/mjcname.png', //명지전문대학로고 이미지
            ),
          ),
          Container(
            //로고,인증 뺀 큰 div
            width: 400.0,
            height: 430.0,
            margin: const EdgeInsets.only(
                left: 20.0, top: 7.0, right: 18.0, bottom: 5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border:
                  Border.all(color: Color.fromRGBO(214, 226, 233, 1), width: 3),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(6, 32, 72, 0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ],
              color: Colors.white, //background color
            ),
            child: Wrap(
              spacing: 8.0, // gap between adjacent chips
              runSpacing: 4.0, // gap between lines
              direction: Axis.horizontal,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      //사진 div
                      margin: const EdgeInsets.only(
                          left: 15.0, top: 15.0, right: 0.0, bottom: 0.0),
                      width: 150,
                      height: 200,
                      child: Image.asset(
                        'images/hj.png',
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(223, 230, 243, 1),
                              width: 1)),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          //모바일 학생증 div

                          margin: const EdgeInsets.only(
                              left: 0.0, top: 15.0, right: 0.0, bottom: 0.0),
                          width: 189,
                          height: 100,
                          child: Text(
                            "모바일 학생증",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Color.fromRGBO(12, 25, 57, 1)),
                          ),
                        ),
                        Container(
                          //사용자 정보 div
                          margin: const EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          padding: const EdgeInsets.only(
                              left: 17.0, top: 0.0, right: 0.0, bottom: 0.0),
                          width: 189,
                          height: 40,
                          child: _getDB(1),
                        ),
                        Container(
                            //사용자 정보 div -> 임의로 넣어놓음
                            margin: const EdgeInsets.only(
                                left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                            padding: const EdgeInsets.only(
                                left: 18.0, top: 0.0, right: 0.0, bottom: 0.0),
                            width: 189,
                            height: 15,
                            child: _getDB(2)),
                        Container(
                          //사용자 정보 div -> 임의로 넣어놓음
                          margin: const EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 0.0, right: 0.0, bottom: 0.0),
                          width: 189,
                          height: 15,
                          child: _getDB(3),
                        ),
                        Container(
                          //사용자 정보 div -> 임의로 넣어놓음
                          margin: const EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 0.0, right: 0.0, bottom: 0.0),
                          width: 189,
                          height: 15,
                          child: _getDB(4),
                        ),
                        Container(
                            //사용자 정보 div -> 임의로 넣어놓음
                            margin: const EdgeInsets.only(
                                left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                            padding: const EdgeInsets.only(
                                left: 18.0, top: 0.0, right: 0.0, bottom: 0.0),
                            width: 189,
                            height: 15,
                            child: _getDB(5)),
                      ],
                    ),
                  ],
                ),
                Container(
                  //도용방지선 div
                  margin: const EdgeInsets.only(
                      left: 0.0, top: 20.0, right: 0.0, bottom: 10.0),
                  padding: const EdgeInsets.only(
                      left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                  width: 400,
                  height: 25,
                  child: ScrollingText(
                    textAlign: TextAlign.center,
                    text: "도용방지선이 움직이는 모바일 학생증만 사용이 유효합니다.  캡쳐본은 사용불가",
                    textStyle: TextStyle(
                        fontSize: 12.0, color: Color.fromRGBO(12, 25, 57, 1)),
                  ),
                  // child: Text(
                  //   "도용방지선이 움직이는 모바일 학생증만 사용이 유효합니다. 캡쳐본은 사용불가",
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //       fontSize: 9.5, color: Color.fromRGBO(12, 25, 57, 1)),
                  // ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(214, 226, 233, 3.6),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20.0, top: 30.0, right: 20.0, bottom: 0.0),
                  width: 400,
                  height: 90,
                  child: _getDB(6),
                ),
              ],
            ),
          ),
          Container(
            //인증 div
            margin: const EdgeInsets.only(
                left: 0.0, top: 6.0, right: 0.0, bottom: 0.0),
            padding: const EdgeInsets.only(
                left: 0.0, top: 3.0, right: 0.0, bottom: 0.0),
            width: 500,
            height: 30,

            child: Text(
              "위 학생이 명지전문대 학생임을 인증합니다.",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontSize: 12, color: Color.fromRGBO(12, 25, 57, 1)),
            ),
          ),
          Transform.translate(
            offset: Offset(100.7, 120.2),
            child: Container(
              width: 190.0,
              height: 90.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: Color.fromRGBO(223, 230, 243, 1),
              ),
            ),
          ),
          /* Transform.translate(
            offset: Offset(172.2, 34.8),
            child: Container(
              width: 70.0,
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
