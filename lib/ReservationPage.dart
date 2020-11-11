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

    Widget mybook = Container(
      padding: const EdgeInsets.only(left: 32, right: 32),
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        color: PrimaryColor,
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: Text(
                    '나의 예약',
                    style: TextStyle(
                      color: PrimaryDarkColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 25),
                    padding: const EdgeInsets.only(left: 75),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 2, right: 5),
                          child: Image.asset(
                            'images/mjclogo.jpg',
                            width: 20,
                            height: 20,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          '이름 [2020123456]',
                          style: TextStyle(
                            fontSize: 15,
                            color: TextColor,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: 360,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: SubColor,
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          '예약 정보',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30, left: 10),
                        child: Text(
                          '장소: 본관 스터디룸 B',
                          style: TextStyle(
                            fontSize: 13,
                            color: PrimaryAssentColor,
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 20, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "날짜: " + currentCal,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: PrimaryAssentColor,
                                ),
                              ),
                              Text(
                                '시간: 17:00 ~ 18:00',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: PrimaryAssentColor,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget book = Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10, right: 230),
      child: Text(
        '예약하기',
        style: TextStyle(
          color: PrimaryDarkColor,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    Widget bookplace = Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      padding: const EdgeInsets.only(right: 32, left: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 400,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
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
                        width: 30,
                        height: 30,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        margin: const EdgeInsets.only(top: 5, left: 10),
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
                        margin: const EdgeInsets.only(top: 3, left: 10),
                        child: Text(
                          '장소를 선택하세요',
                          style: TextStyle(
                            color: Colors.black,
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
                        margin: const EdgeInsets.only(left: 50),
                        child: Column(
                          children: [
                            Text(
                              '도서관 지하 1층',
                              style: TextStyle(
                                color: Colors.black,
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
                        margin: const EdgeInsets.only(left: 50),
                        child: Column(
                          children: [
                            Text(
                              '본관 카페 1층',
                              style: TextStyle(
                                color: Colors.black,
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
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(right: 32, left: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 400,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
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
                        width: 30,
                        height: 30,
                        padding: EdgeInsets.symmetric(vertical: 5),
                        margin: const EdgeInsets.only(top: 5, left: 10),
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
                        margin: const EdgeInsets.only(top: 5, left: 10),
                        child: Text(
                          '날짜와 시간을 선택하세요',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
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
                                  fontSize: 15,
                                  color: Colors.black,
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
                                  fontSize: 15,
                                  color: Colors.black,
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
      appBar: AppBar(
        title: Text("Sample App"),
      ),
      body: Container(
        child: Column(
          children: [
            mybook,
            book,
            DefaultTabController(
                length: 3,
                child: Column(children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 15, right: 15),
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
                            border: Border.all(width: 5, color: BorderColor),
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
                      height: 275, //height of TabBarView
                      decoration: BoxDecoration(
                          border: Border(
                              top:
                                  BorderSide(color: Colors.white, width: 0.5))),
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
                          child: Center(
                            child: Text('Display Tab 2',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: Text('Display Tab 3',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ]))
                ])),
            bookbuttonfinish,
            //Text(textToShow),
          ],
        ),
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
            style: TextStyle(fontSize: 15, color: color),
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
        minWidth: 65,
        height: 35,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18)),
          color: color,
          child: Text(
            label,
            style: TextStyle(fontSize: 15, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          onPressed: () {},
          // onPressed: () => clickcase(label),
        ),
      )
    ],
  );
}
