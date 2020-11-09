import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  // This widget is the root of your application.//설정

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('LoginPage'),
        ),
        //backgroundColor: Color.fromRGBO(223, 230, 243, 1),
        body: Align(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                //설정
                padding: const EdgeInsets.only(
                    left: 0.0, top: 40.0, right: 0.0, bottom: 10.0),
                margin: const EdgeInsets.only(
                    left: 10.0, top: 40.0, right: 0.0, bottom: 0.0),
                child: Text(
                  "설정",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromRGBO(12, 25, 57, 1)),
                ),
              ),
              Container(
                //상자
                width: 400,
                height: 150,
                margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        width: 3, color: Color.fromRGBO(223, 230, 243, 1))),
                child: Row(
                  children: <Widget>[
                    Container(
                      //로고
                      margin: const EdgeInsets.only(
                          left: 15.0, top: 10.0, right: 0.0, bottom: 10.0),
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'images/logo.png',
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(223, 230, 243, 1),
                              width: 1)),
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                          //인적사항
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              //로그아웃+이름
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 0.0,
                                      top: 15.0,
                                      right: 0.0,
                                      bottom: 0.0),
                                  padding: const EdgeInsets.only(
                                      left: 13.0,
                                      top: 0.0,
                                      right: 0.0,
                                      bottom: 0.0),
                                  width: 180,
                                  height: 30,
                                  child: Text(
                                    "양혜원",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: Color.fromRGBO(12, 25, 57, 1)),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 0.0,
                                      top: 15.0,
                                      right: 0.0,
                                      bottom: 0.0),
                                  width: 80.0,
                                  height: 30.0,
                                  child: RaisedButton(
                                    child: Text("Logout"),
                                    textColor: Colors.black,
                                    color: Color.fromRGBO(223, 230, 243, 1),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(30.0)),
                                    onPressed: () {
                                      // Respond to button press
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                              padding: const EdgeInsets.only(
                                  left: 13.0,
                                  top: 0.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              width: 250,
                              height: 15,
                              child: Text("생년월일 : 1997. 09. 11",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(12, 25, 57, 1))),
                              decoration: BoxDecoration(
                                  //border: Border.all(color: Colors.blue, width: 5)
                                  ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                              padding: const EdgeInsets.only(
                                  left: 13.0,
                                  top: 0.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              width: 250,
                              height: 15,
                              child: Text("학과 : 인터넷응용보안공학과",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(12, 25, 57, 1))),
                              decoration: BoxDecoration(
                                  //border: Border.all(color: Colors.blue, width: 5)
                                  ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                              padding: const EdgeInsets.only(
                                  left: 13.0,
                                  top: 0.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              width: 250,
                              height: 15,
                              child: Text("학번 : 2020771001",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(12, 25, 57, 1))),
                              decoration: BoxDecoration(
                                  //border: Border.all(color: Colors.blue, width: 5)
                                  ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                              padding: const EdgeInsets.only(
                                  left: 13.0,
                                  top: 0.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              width: 250,
                              height: 15,
                              child: Text("학적상태 : 재학(전공심화)",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(12, 25, 57, 1))),
                              decoration: BoxDecoration(
                                  //border: Border.all(color: Colors.blue, width: 5)
                                  ),
                            ),
                            Container(
                              //정보수정
                              margin: const EdgeInsets.only(
                                  left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                              padding: const EdgeInsets.only(
                                  left: 13.0,
                                  top: 2.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              width: 250,
                              height: 20,
                              child: Text("*정보 수정은 학교 홈페이지 이용 바랍니다.",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromRGBO(12, 25, 57, 1))),
                              decoration: BoxDecoration(
                                  //border: Border.all(color: Colors.blue, width: 5)
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                //연락
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                        left: 0.0, top: 6.0, right: 0.0, bottom: 0.0),
                    padding: const EdgeInsets.only(
                        left: 13.0, top: 3.0, right: 0.0, bottom: 0.0),
                    width: 30,
                    height: 30,
                    child: Image.asset(
                      'images/minilogo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 5.0, top: 6.0, right: 0.0, bottom: 0.0),
                    padding: const EdgeInsets.only(
                        left: 0.0, top: 3.0, right: 0.0, bottom: 0.0),
                    child: Text(
                      "지원부서 연락",
                      style: TextStyle(
                          fontSize: 17, color: Color.fromRGBO(12, 25, 57, 1)),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(13.0),
                alignment: Alignment.center,
                color: Color.fromRGBO(223, 230, 243, 1),
                width: 400,
                height: 80,
                child: Text(
                  "오류관련 문의 - mjcmobileidcard@gmail.com\n문의전화 010 1234 5678",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17, color: Color.fromRGBO(12, 25, 57, 1)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body:
          Center(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
