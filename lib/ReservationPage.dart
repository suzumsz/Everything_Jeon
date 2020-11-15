import 'package:flutter/material.dart';

void main() {
  runApp(ReservationPage());
}

class ReservationPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      home: ReservationAppPage(),
    );
  }
}

class ReservationAppPage extends StatefulWidget {
  ReservationAppPage({Key key}) : super(key: key);

  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<ReservationAppPage> {
  String textToShow = "I Like Flutter";

  void _updateText() {
    setState(() {
      // update the text
      textToShow = "Flutter is Awesome!";
    });
  }

  static const PrimaryColor = Color(0xffDFE6F3);
  static const PrimaryAssentColor = Color(0xFF205072);
  static const PrimaryDarkColor = Color(0xff0C1939);
  static const TextColor = Color(0xff0A1736);
  static const SubColor = Color(0xff3C4C73);
  static const BorderColor = Color(0xff445379);

  @override
  Widget build(BuildContext context) {
    String currentCal = DateTime.now().year.toString() +
        "-" +
        DateTime.now().month.toString() +
        "-" +
        DateTime.now().day.toString();

    Widget mybook = Stack(
      children: [
        Transform.translate(
          offset: Offset(0.0, -1.0),
          child:
              // Adobe XD layer: 'Background' (shape)
              Container(
            width: 414.0,
            height: 227.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25.0),
                bottomLeft: Radius.circular(25.0),
              ),
              color: const Color(0xffdfe6f3),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(58.0, 112.0),
          child:
              // Adobe XD layer: 'Rectangle' (shape)
              Container(
            width: 330.0,
            height: 88.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              color: const Color(0xffffffff),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(26.0, 125.0),
          child: Container(
            width: 62.0,
            height: 62.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              color: const Color(0xf23c4c73),
              border: Border.all(width: 3.0, color: const Color(0xf2ffffff)),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(27.0, 56.0),
          child: Text(
            '나의 예약',
            style: TextStyle(
              fontFamily: 'DX유니고딕 20',
              fontSize: 25,
              color: const Color(0xff0c1939),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(27.0, 251.0),
          child: Text(
            '예약하기',
            style: TextStyle(
              fontFamily: 'DX유니고딕 20',
              fontSize: 25,
              color: const Color(0xff0c1939),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(265.0, 71.0),
          child: Text(
            '정혜진 [2020581015]',
            style: TextStyle(
              fontFamily: 'DX유니고딕 20',
              fontSize: 13,
              color: const Color(0xff0a1736),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(37.0, 148.0),
          child: Text(
            '예약정보',
            style: TextStyle(
              fontFamily: 'DX유니고딕 20',
              fontSize: 10,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(97.0, 147.0),
          child:
              // Adobe XD layer: 'Svyatoslav Taushev' (text)
              Text(
            '장소 : 본관 스터디룸  B',
            style: TextStyle(
              fontFamily: 'DX유니고딕 20',
              fontSize: 12,
              color: const Color(0xff205072),
              height: 1.5,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(256.0, 137.0),
          child:
              // Adobe XD layer: 'Svyatoslav Taushev' (text)
              Text(
            '날짜 : 2020. 10. 31\n시간 : 17:00 - 18:00',
            style: TextStyle(
              fontFamily: 'DX유니고딕 20',
              fontSize: 12,
              color: const Color(0xff205072),
              height: 1.5,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );

    Widget studyroomplace = Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(right: 32, left: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 310,
            height: 128,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 3,
                color: PrimaryColor,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 26,
                        height: 26,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        margin: const EdgeInsets.only(top: 10, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: PrimaryColor,
                        ),
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'DX유니고딕 20',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        margin: const EdgeInsets.only(top: 7, left: 10),
                        child: Text(
                          '장소를 선택하세요',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DX유니고딕 20',
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 15, left: 40),
                        child: Column(
                          children: [
                            Text(
                              '제 1열람실',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'DX유니고딕 20',
                                fontSize: 12,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 30,
                                    child: FlatButton(
                                      color: Colors.grey[300],
                                      child: Text(
                                        "좌석 확인하기",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontFamily: 'DX유니고딕 20',
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15, left: 50),
                        child: Column(
                          children: [
                            Text(
                              '제 2열람실',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'DX유니고딕 20',
                                fontSize: 12,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 30,
                                    child: FlatButton(
                                      color: Colors.grey[300],
                                      child: Text(
                                        "좌석 확인하기",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontFamily: 'DX유니고딕 20',
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );

    Widget bookplace = Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(right: 32, left: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 310,
            height: 128,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 3,
                color: PrimaryColor,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 26,
                        height: 26,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        margin: const EdgeInsets.only(top: 10, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: PrimaryColor,
                        ),
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        margin: const EdgeInsets.only(top: 7, left: 10),
                        child: Text(
                          '장소를 선택하세요',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 15, left: 45),
                        child: Column(
                          children: [
                            Text(
                              '도서관 지하 1층',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildABCButton(Colors.grey[900], 'A'),
                                  _buildABCButton(Colors.grey[900], 'B'),
                                  _buildABCButton(Colors.grey[900], 'C'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15, left: 50),
                        child: Column(
                          children: [
                            Text(
                              '본관 카페 1층',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildABCButton(Colors.grey[900], 'A'),
                                  _buildABCButton(Colors.grey[900], 'B'),
                                  _buildABCButton(Colors.grey[900], 'C'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );

    Widget booktime = Container(
      padding: const EdgeInsets.only(top: 10, right: 32, left: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 310,
            height: 128,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 3,
                color: PrimaryColor,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 26,
                        height: 26,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        margin: const EdgeInsets.only(top: 10, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: PrimaryColor,
                        ),
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        margin: const EdgeInsets.only(top: 7, left: 10),
                        child: Text(
                          '날짜와 시간을 선택하세요',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15, left: 35),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FlatButton(
                        child: Container(
                          width: 70,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(Icons.calendar_today),
                              Text(
                                "10.25",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontFamily: 'DX유니고딕 20',
                                ),
                              ),
                            ],
                          ),
                        ),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: Container(
                          width: 125,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(Icons.query_builder),
                              Text(
                                "14:00 ~ 15:00",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontFamily: 'DX유니고딕 20',
                                ),
                              ),
                            ],
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget booksearch = Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(right: 32, left: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 310,
            height: 128,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 3,
                color: PrimaryColor,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 26,
                        height: 26,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        margin: const EdgeInsets.only(top: 10, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: PrimaryColor,
                        ),
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontFamily: 'DX유니고딕 20',
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10, left: 10),
                        width: 150,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: PrimaryColor,
                        ),
                        child: new Theme(
                          data: new ThemeData(
                            primaryColor: BorderColor,
                            primaryColorDark: BorderColor,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: BorderColor,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(25.0)))),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 40),
                        child: FlatButton(
                          minWidth: 20,
                          height: 20,
                          color: PrimaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20)),
                          child: Text(
                            "더보기",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  width: 250,
                  height: 50,
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Image.asset(
                          'images/book1.png',
                          width: 40,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          "도서정보\n[" +
                              "자존감 수업" +
                              "/윤홍균" +
                              "] [서울:심플라이프]\n\n " +
                              "대출가능" +
                              "\n[182.1 윤95ㅈ]",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        trailing: FlatButton(
                          minWidth: 20,
                          height: 20,
                          color: Colors.grey[300],
                          child: Text(
                            "예약",
                            style: TextStyle(fontSize: 10, color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget bookbuttonfinish = Container(
      margin: const EdgeInsets.only(right: 30),
      child: Row(
        // 로우를 자식으로 가짐
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // 세개의 위젯들을 자식들로 가짐
          _buildbookButton(PrimaryColor, '완료'),
        ],
      ),
    );

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Reservation Page"),
      // ),
      body: Stack(
        children: <Widget>[
          Container(
            child: Column(
              children: [
                mybook,
                DefaultTabController(
                    length: 3,
                    child: Column(children: <Widget>[
                      Container(
                        margin:
                            const EdgeInsets.only(top: 80, left: 15, right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TabBar(
                          indicatorColor: Colors.transparent,
                          labelColor: TextColor,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(width: 5, color: BorderColor),
                                color: PrimaryColor,
                              ),
                              child: Tab(
                                child: Text(
                                  "스터디룸 예약",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: TextColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: PrimaryColor,
                              ),
                              child: Tab(
                                child: Text(
                                  "독서실 예약",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: TextColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: PrimaryColor,
                              ),
                              child: Tab(
                                child: Text(
                                  "도서 예약",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: TextColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: 310, //height of TabBarView
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.white, width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  bookplace,
                                  booktime,
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  studyroomplace,
                                  booktime,
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  booksearch,
                                  booktime,
                                ],
                              ),
                            ),
                          ]))
                    ])),
                bookbuttonfinish,
                //Text(textToShow),
              ],
            ),
          ),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _updateText,
      //   tooltip: 'Update Text',
      //   child: Icon(Icons.update),
      // ),
    );
  }
}

void clickcase(String msg) {
  switch (msg) {
    case "스터디룸 예약":
      break;
    case "독서실 예약":
      print("독서실");
      break;
    case "도서 예약":
      print("도서");
      break;
  }
}

Column _buildABCButton(Color color, String label) {
  // 컬럼을 생성하여 반환
  return Column(
    mainAxisSize: MainAxisSize.min, // 여유공간을 최소로 할당
    mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
    // 컬럼의 자식들로 아이콘과 컨테이너를 등록
    children: <Widget>[
      Container(
        width: 30,
        height: 30,
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[300],
        ),
        child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5)),
          color: Colors.grey[300],
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: color,
              fontFamily: 'DX유니고딕 20',
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: () {},
        ),
      )
    ],
  );
}

Column _buildbookButton(Color color, String label) {
  // 컬럼을 생성하여 반환
  return Column(
    mainAxisSize: MainAxisSize.min, // 여유공간을 최소로 할당
    mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
    // 컬럼의 자식들로 아이콘과 컨테이너를 등록
    children: <Widget>[
      ButtonTheme(
        minWidth: 67,
        height: 35,
        child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18)),
          color: color,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontFamily: 'DX유니고딕 20',
            ),
            textAlign: TextAlign.left,
          ),
          onPressed: () {},
          // onPressed: () => clickcase(label),
        ),
      )
    ],
  );
}

Column _buildButtonColumn(Color color, String label) {
  const TextColor = Color(0xff0A1736);
  // 컬럼을 생성하여 반환
  return Column(
    mainAxisSize: MainAxisSize.min, // 여유공간을 최소로 할당
    mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
    // 컬럼의 자식들로 아이콘과 컨테이너를 등록
    children: <Widget>[
      ButtonTheme(
        minWidth: 90,
        height: 90,
        padding: EdgeInsets.symmetric(vertical: 40),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20)),
          color: color,
          child: Text(
            label,
            style: TextStyle(fontSize: 15, color: TextColor),
            textAlign: TextAlign.center,
          ),
          onPressed: () => clickcase(label),
        ),
      ),
    ],
  );
}
