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

class MyApp extends State<ReservationAppPage>
    with SingleTickerProviderStateMixin {
  //_tabController
  TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //스터디룸예약 - 시간 클릭

  bool studyroomVisible1 = true; //보이는거 안보이게
  bool studyroomVisible2 = false; //안보이는거 보이게

  void studyroomshowWidget() {
    //보이기
    setState(() {
      studyroomVisible1 = true;
      studyroomVisible2 = false;
    });
  }

  void studyroomhideWidget() {
    //숨기기
    setState(() {
      studyroomVisible1 = false;
      studyroomVisible2 = true;
    });
  }

  //독서실예약 - 열람실 - 좌석확인하기 클릭

  bool bookVisible1 = true; //보이는거 안보이게
  bool bookVisible2 = false; //안보이는거 보이게

  void bookshowWidget() {
    //보이기
    setState(() {
      bookVisible1 = true;
      bookVisible2 = false;
    });
  }

  void bookhideWidget() {
    //숨기기
    setState(() {
      bookVisible1 = false;
      bookVisible2 = true;
    });
  }

  //달력 클릭
  DateTime _selectedDate = DateTime.now();

  static const PrimaryColor = Color(0xffDFE6F3);
  static const PrimaryAssentColor = Color(0xFF205072);
  static const PrimaryDarkColor = Color(0xff0C1939);
  static const TextColor = Color(0xff0A1736);
  static const SubColor = Color(0xff3C4C73);
  static const BorderColor = Color(0xff445379);

  @override
  Widget build(BuildContext context) {
    Widget tabs = Container(
      margin: EdgeInsets.only(top: 305, left: 50, right: 50),
      child: TabBar(
        controller: _tabController,
        indicatorPadding: EdgeInsets.all(30),
        indicatorWeight: 1,
        indicator: BoxDecoration(
          color: PrimaryColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 3.0, color: BorderColor),
        ),
        labelColor: TextColor,
        unselectedLabelColor: TextColor,
        tabs: [
          Container(
            width: 90,
            height: 90,
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
          )
        ],
      ),
    );
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
                                      onPressed: () {
                                        bookhideWidget();
                                      },
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

// 예약 가능 시간
    const postime = Color(0xff9BFFA1);
    const impostime = Color(0xffFF8888);
    String _restime = "";
    int _counter = 0;

    void changeText() {
      setState(() {
        //_restime = time;
        _counter++;
        print(_counter);
      });
    }

    Widget timebutton(String time, Color color) {
      return Container(
        margin: EdgeInsets.only(top: 5, left: 10),
        width: 65,
        height: 30,
        child: FlatButton(
          color: color,
          child: Text(
            time,
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'DX유니고딕 20',
            ),
            textAlign: TextAlign.right,
          ),
          onPressed: () {
            changeText();
          },
        ),
      );
    }

    Widget _posrestime = Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 305, left: 50),
          width: 310,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 3,
              color: PrimaryColor,
            ),
          ),
          child: Column(
            children: [
              Container(
                width: 320.0,
                height: 39.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  color: const Color(0xffdfe6f3),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 7, left: 120),
                  child: Text(
                    "예약 가능 시간",
                    style: TextStyle(
                      fontFamily: 'DX유니고딕 20',
                      fontSize: 11,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, right: 5, left: 170),
                      width: 15,
                      height: 15,
                      color: postime,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        "예약 가능",
                        style: TextStyle(fontSize: 8, fontFamily: 'DX유니고딕 20'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, right: 5, left: 10),
                      width: 15,
                      height: 15,
                      color: impostime,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        "예약 불가능",
                        style: TextStyle(fontSize: 8, fontFamily: 'DX유니고딕 20'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, left: 30),
                child: Row(
                  children: [
                    timebutton("09:00", postime),
                    timebutton("10:00", postime),
                    timebutton("11:00", postime),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7, left: 30),
                child: Row(
                  children: [
                    timebutton("12:00", postime),
                    timebutton("13:00", impostime),
                    timebutton("14:00", postime),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7, left: 30),
                child: Row(
                  children: [
                    timebutton("15:00", impostime),
                    timebutton("16:00", postime),
                    timebutton("17:00", impostime),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "* 독서실은 1시간 단위로 예약 가능합니다",
                  style: TextStyle(fontSize: 11, fontFamily: 'DX유니고딕 20'),
                ),
              ),
            ],
          ),
        ),
      ],
    );

    Widget booktime(double top, double left) {
      // 10, 32
      return Container(
        padding: EdgeInsets.only(top: top, right: 32, left: left),
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
                                  // '$_selectedDate',
                                  _selectedDate.month.toString() +
                                      "/" +
                                      _selectedDate.day.toString(),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontFamily: 'DX유니고딕 20',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onPressed: () {
                            Future<DateTime> selected = showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2015),
                                lastDate: DateTime(2025),
                                builder: (BuildContext context, Widget child) {
                                  return Theme(
                                      data: ThemeData.light(), child: child);
                                });
                            selected.then((dateTime) {
                              setState(() {
                                _selectedDate = dateTime;
                              });
                            });
                          },
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
                                  '$_counter',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontFamily: 'DX유니고딕 20',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onPressed: () {
                            studyroomhideWidget();
                          },
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
    }

// 제1열람실 위젯
    Widget _leftonechair(String label) {
      return Container(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5, left: 5),
              width: 21,
              height: 32,
              child: FlatButton(
                color: Colors.grey[300],
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'DX유니고딕 20',
                  ),
                  textAlign: TextAlign.right,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 2),
              width: 4,
              height: 16,
              color: Colors.grey[300],
            ),
          ],
        ),
      );
    }

    Widget _lefttwofivechair(String label) {
      return Container(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 2, left: 5),
              width: 21,
              height: 32,
              child: FlatButton(
                color: Colors.grey[300],
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'DX유니고딕 20',
                  ),
                  textAlign: TextAlign.right,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2, left: 2),
              width: 4,
              height: 16,
              color: Colors.grey[300],
            ),
          ],
        ),
      );
    }

    Widget _rightonechair(String label) {
      return Container(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 5, left: 15),
              width: 4,
              height: 16,
              color: Colors.grey[300],
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 2),
              width: 21,
              height: 32,
              child: FlatButton(
                color: Colors.grey[300],
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'DX유니고딕 20',
                  ),
                  textAlign: TextAlign.right,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      );
    }

    Widget _righttwofivechair(String label) {
      return Container(
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 2, left: 15),
              width: 4,
              height: 16,
              color: Colors.grey[300],
            ),
            Container(
              margin: EdgeInsets.only(top: 2, left: 2),
              width: 21,
              height: 32,
              child: FlatButton(
                color: Colors.grey[300],
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'DX유니고딕 20',
                  ),
                  textAlign: TextAlign.right,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      );
    }

    Widget _readingroom = Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 305, left: 50),
          width: 310,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 3,
              color: PrimaryColor,
            ),
          ),
          child: Column(
            children: [
              Container(
                width: 320.0,
                height: 39.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  color: const Color(0xffdfe6f3),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 7, left: 120),
                  child: Text(
                    "제1열람실",
                    style: TextStyle(
                      fontFamily: 'DX유니고딕 20',
                      fontSize: 11,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7, left: 30),
                child: Row(
                  children: [
                    Text(
                      "A",
                      style: TextStyle(
                        fontFamily: 'DX유니고딕 20',
                        fontSize: 11,
                        color: const Color(0xff000000),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 17),
                      child: Text(
                        "B",
                        style: TextStyle(
                          fontFamily: 'DX유니고딕 20',
                          fontSize: 11,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40),
                      child: Text(
                        "C",
                        style: TextStyle(
                          fontFamily: 'DX유니고딕 20',
                          fontSize: 11,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 17),
                      child: Text(
                        "D",
                        style: TextStyle(
                          fontFamily: 'DX유니고딕 20',
                          fontSize: 11,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 42),
                      child: Text(
                        "E",
                        style: TextStyle(
                          fontFamily: 'DX유니고딕 20',
                          fontSize: 11,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 17),
                      child: Text(
                        "F",
                        style: TextStyle(
                          fontFamily: 'DX유니고딕 20',
                          fontSize: 11,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 42),
                      child: Text(
                        "G",
                        style: TextStyle(
                          fontFamily: 'DX유니고딕 20',
                          fontSize: 11,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 17),
                      child: Text(
                        "H",
                        style: TextStyle(
                          fontFamily: 'DX유니고딕 20',
                          fontSize: 11,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          _rightonechair("1"),
                          _righttwofivechair("2"),
                          _righttwofivechair("3"),
                          _righttwofivechair("4"),
                          _righttwofivechair("5"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          _leftonechair("1"),
                          _lefttwofivechair("2"),
                          _lefttwofivechair("3"),
                          _lefttwofivechair("4"),
                          _lefttwofivechair("5"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          _rightonechair("1"),
                          _righttwofivechair("2"),
                          _righttwofivechair("3"),
                          _righttwofivechair("4"),
                          _righttwofivechair("5"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          _leftonechair("1"),
                          _lefttwofivechair("2"),
                          _lefttwofivechair("3"),
                          _lefttwofivechair("4"),
                          _lefttwofivechair("5"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          _rightonechair("1"),
                          _righttwofivechair("2"),
                          _righttwofivechair("3"),
                          _righttwofivechair("4"),
                          _righttwofivechair("5"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          _leftonechair("1"),
                          _lefttwofivechair("2"),
                          _lefttwofivechair("3"),
                          _lefttwofivechair("4"),
                          _lefttwofivechair("5"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          _rightonechair("1"),
                          _righttwofivechair("2"),
                          _righttwofivechair("3"),
                          _righttwofivechair("4"),
                          _righttwofivechair("5"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          _leftonechair("1"),
                          _lefttwofivechair("2"),
                          _lefttwofivechair("3"),
                          _lefttwofivechair("4"),
                          _lefttwofivechair("5"),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );

// 탭뷰
    Widget tabView = Container(
      margin: EdgeInsets.only(top: 400),
      child: TabBarView(controller: _tabController, children: [
        Container(
          child: Column(
            children: [
              bookplace,
              booktime(10, 32),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              studyroomplace,
              booktime(
                10,
                32,
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              booksearch,
              booktime(
                10,
                32,
              ),
            ],
          ),
        ),
      ]),
    );

//완료버튼
    Widget bookbuttonfinish = Container(
      margin: const EdgeInsets.only(top: 720, right: 50),
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
            child: Stack(
              children: [
                mybook,
                Visibility(
                    visible: bookVisible1 && studyroomVisible1, child: tabs),
                Visibility(visible: bookVisible2, child: _readingroom),
                Visibility(
                    visible: bookVisible2,
                    child: booktime(
                      565,
                      50,
                    )),
                Visibility(
                    visible: bookVisible1 && studyroomVisible1, child: tabView),
                Visibility(visible: studyroomVisible2, child: _posrestime),
                Visibility(
                    visible: studyroomVisible2,
                    child: booktime(
                      565,
                      50,
                    )),
                bookbuttonfinish,
                //Text(textToShow),
              ],
            ),
          ),
        ],
      ),
    );
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
        height: 40,
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5)),
          color: Colors.grey[300],
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
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
        child: Builder(
          builder: (context) => Center(
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
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          title: Text('예약되었습니다.'),
                          content: Text('닫고 싶으시면 아무곳이나 눌러주세요!'),
                        ));
              },
            ),
          ),
          // onPressed: () => clickcase(label),
        ),
      )
    ],
  );
}
