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
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: Text('XDinfo_list-진원이가달라고한페이지'),
              onTap: () {
                Navigator.pushNamed(context, '/XDinfo_list');
              },
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),

      //------------ 여기서부터 body ------------------------
      backgroundColor: Color.fromRGBO(223, 230, 243, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            //명지전문대학 로고 div
            margin: const EdgeInsets.only(
                left: 18.0, top: 50.0, right: 0.0, bottom: 0.0),
            width: 200,
            height: 50,
            child: Image.asset(
              'images/mjcname.png', //명지전문대학로고 이미지
            ),
          ),
          Container(
            //로고,인증 뺀 큰 div
            width: 360.0,
            height: 420.0,
            margin: const EdgeInsets.only(
                left: 18.0, top: 7.0, right: 18.0, bottom: 5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
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
            child: Column(
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
                        'images/sample.jpg',
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
                          width: 150,
                          height: 100,
                          child: Text(
                            "모바일 학생증",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                                color: Color.fromRGBO(12, 25, 57, 1)),
                          ),
                        ),
                        Container(
                          //사용자 정보 div
                          margin: const EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          padding: const EdgeInsets.only(
                              left: 13.0, top: 0.0, right: 0.0, bottom: 0.0),
                          width: 150,
                          height: 40,
                          child: Text("김명지",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromRGBO(12, 25, 57, 1))),
                        ),
                        Container(
                          //사용자 정보 div -> 임의로 넣어놓음
                          margin: const EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          padding: const EdgeInsets.only(
                              left: 13.0, top: 0.0, right: 0.0, bottom: 0.0),
                          width: 150,
                          height: 15,
                          child: Text("생년월일 : 1997. 03. 17",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(12, 25, 57, 1))),
                        ),
                        Container(
                          //사용자 정보 div -> 임의로 넣어놓음
                          margin: const EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          padding: const EdgeInsets.only(
                              left: 13.0, top: 0.0, right: 0.0, bottom: 0.0),
                          width: 150,
                          height: 15,
                          child: Text("학과 : 정보통신공학과",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(12, 25, 57, 1))),
                        ),
                        Container(
                          //사용자 정보 div -> 임의로 넣어놓음
                          margin: const EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          padding: const EdgeInsets.only(
                              left: 13.0, top: 0.0, right: 0.0, bottom: 0.0),
                          width: 150,
                          height: 15,
                          child: Text("학번 : 2020541012",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(12, 25, 57, 1))),
                        ),
                        Container(
                          //사용자 정보 div -> 임의로 넣어놓음
                          margin: const EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          padding: const EdgeInsets.only(
                              left: 13.0, top: 0.0, right: 0.0, bottom: 0.0),
                          width: 150,
                          height: 15,
                          child: Text("학적상태 : 재학(전공심화)",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromRGBO(12, 25, 57, 1))),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  //도용방지선 div
                  margin: const EdgeInsets.only(
                      left: 0.0, top: 15.0, right: 0.0, bottom: 10.0),
                  padding: const EdgeInsets.only(
                      left: 0.0, top: 5.0, right: 0.0, bottom: 0.0),
                  width: 400,
                  height: 25,
                  child: Text(
                    "도용방지선이 움직이는 모바일 학생증만 사용이 유효합니다. 캡쳐본은 사용불가",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 9.5, color: Color.fromRGBO(12, 25, 57, 1)),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(214, 226, 233, 3.6),
                  ),
                ),
                Container(
                  //바코드 div, 사진 임의로 넣어놓음
                  margin: const EdgeInsets.only(
                      left: 20.0, top: 30.0, right: 20.0, bottom: 0.0),
                  width: 400,
                  height: 90,
                  child: Image.asset(
                    'images/barcode.png',
                    fit: BoxFit.cover,
                  ),
                  decoration: BoxDecoration(
                      // border: Border.all(color: Colors.blueGrey, width: 5)
                      ),
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
            width: 400,
            height: 30,
            child: Text(
              "위 학생이 명지전문대 학생임을 인증합니다.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 9.5, color: Color.fromRGBO(12, 25, 57, 1)),
            ),
          ),
        ],
      ),
    );
  }
}
