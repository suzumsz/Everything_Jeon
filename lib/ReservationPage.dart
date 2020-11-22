import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  await Firebase.initializeApp();
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
  ReservationAppPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<ReservationAppPage>
    with SingleTickerProviderStateMixin {
  //_tabController
  TabController _tabController;
  String currtime = "00";
  String nexttime = "00";
  String currMonth = DateTime.now().month.toString();
  String currDay = DateTime.now().day.toString();
  int studyroomnum = 0;
  double newheight = 128.0;
  double listnewheight = 50.0;
  double newtop = 400.0;
  String stloc = "";

  DateTime _currentDate = DateTime.now();
  DateTime _currentDate2 = DateTime.now();
  String _currentMonth = DateTime(2020, 11, 20).month.toString();
  DateTime _targetDateTime = DateTime.now();
  CalendarCarousel _calendarCarouselNoHeader;

  static const postime = Color(0xff9BFFA1);
  static const impostime = Color(0xffFF8888);
  Color selectColor = Color(0xffE3E5E9);
  Color stselectColor = Colors.grey[300];

//시간
  void changeText(String time) {
    setState(() {
      currtime = time;
      nexttime = (int.parse(time) + 1).toString();
    });
  }

//달력
  void changeTextday(DateTime time) {
    setState(() {
      currMonth = time.month.toString();
      currDay = time.day.toString();
    });
  }

  void changeTextNum(int stnum) {
    setState(() {
      studyroomnum = stnum;
    });
  }

// 도서 예약 - 더보기 클릭 시 레이아웃 변경
  void changeaddheigh(double height, double top, double listheight) {
    setState(() {
      newheight = height;
      newtop = top;
      listnewheight = listheight;
    });
  }

//열람실 버튼 클릭 시 색 변경
  void changeButtonColor(Color color) {
    setState(() {
      selectColor = color;
      stselectColor = color;
    });
  }

  void changeloctext(String loc) {
    setState(() {
      stloc = "본관 스터디룸" + loc;
    });
  }

  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // 도서예약 - 더보기 클릭

  bool addVisible1 = true; //보이는거 안보이게
  bool addVisible2 = false; //안보이는거 보이게

  void addshowWidget() {
    //보이기
    setState(() {
      addVisible1 = true;
      addVisible2 = false;
    });
  }

  void addhideWidget() {
    //숨기기
    setState(() {
      addVisible1 = false;
      addVisible2 = true;
    });
  }

  //2.날짜와 시간 선택 - 시간 클릭

  bool dayVisible1 = true; //보이는거 안보이게
  bool dayVisible2 = false; //안보이는거 보이게

  //2.날짜와 시간 선택 - 시간 클릭

  bool timeVisible1 = true; //보이는거 안보이게
  bool timeVisible2 = false; //안보이는거 보이게

  void dayshowWidget() {
    //보이기
    setState(() {
      dayVisible1 = true;
      dayVisible2 = false;
    });
  }

  void dayhideWidget() {
    //숨기기
    setState(() {
      dayVisible1 = false;
      dayVisible2 = true;
      timeVisible2 = false;
    });
  }

  void timeVshowWidget() {
    //보이기
    setState(() {
      timeVisible1 = true;
      timeVisible2 = false;
    });
  }

  void timeVhideWidget() {
    //숨기기
    setState(() {
      timeVisible1 = false;
      timeVisible2 = true;
      dayVisible2 = false;
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

  static const PrimaryColor = Color(0xffDFE6F3);
  static const PrimaryAssentColor = Color(0xFF205072);
  static const PrimaryDarkColor = Color(0xff0C1939);
  static const TextColor = Color(0xff0A1736);
  static const SubColor = Color(0xff3C4C73);
  static const BorderColor = Color(0xff445379);

  String studyroom1 = "도서관 지하 1층";
  String studyroom2 = "본관 카페 1층";

  @override
  Widget build(BuildContext context) {
    Widget tabs = Container(
      margin: EdgeInsets.only(top: 305, left: 50, right: 50),
      child: TabBar(
        controller: _tabController,
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
          ),
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
                        margin: const EdgeInsets.only(top: 10, left: 25),
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
                                        changeTextNum(1);
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
                                      onPressed: () {
                                        bookhideWidget();
                                        changeTextNum(2);
                                      },
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

    Column _buildABCButton(Color color, String label, String loc) {
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
              color: color,
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'DX유니고딕 20',
                ),
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                if (loc == studyroom1) {
                  print(label);
                  if (label == "A") {
                    changeloctext(label);
                  }
                  if (label == "B") {
                    changeloctext(label);
                  }
                }
                if (loc == studyroom2) {
                  print(loc);
                }
              },
            ),
          )
        ],
      );
    }

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
                              studyroom1,
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
                                  _buildABCButton(
                                      stselectColor, 'A', studyroom1),
                                  _buildABCButton(
                                      stselectColor, 'B', studyroom1),
                                  _buildABCButton(
                                      Colors.grey[300], 'C', studyroom1),
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
                              studyroom2,
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
                                  _buildABCButton(
                                      Colors.grey[300], 'A', studyroom2),
                                  _buildABCButton(
                                      Colors.grey[300], 'B', studyroom2),
                                  _buildABCButton(
                                      Colors.grey[300], 'C', studyroom2),
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
            height: newheight,
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
                          onPressed: () {
                            addhideWidget();
                            changeaddheigh(250.0, 280.0, 180.0);
                            print(newheight);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  width: 250,
                  height: listnewheight,
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
                      ListTile(
                        leading: Image.asset(
                          'images/book2.png',
                          width: 40,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          "도서정보\n[" +
                              "나는 나로 살기로 했다" +
                              "/김수현" +
                              "] [서울:마음의 숲]\n\n " +
                              "대출가능" +
                              "\n[184.7 김57나]",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        trailing: FlatButton(
                          minWidth: 20,
                          height: 20,
                          color: Colors.grey[300],
                          child: Text(
                            "대기",
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

// 예약 가능 날짜

    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      //todayBorderColor: Colors.green,
      locale: 'ko-KR',
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
      weekFormat: false,
//      firstDayOfWeek: 4,
      //markedDatesMap: _markedDateMap,
      height: 200.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      // markedDateCustomShapeBorder:
      //     CircleBorder(side: BorderSide(color: Colors.yellow)),
      // markedDateCustomTextStyle: TextStyle(
      //   fontSize: 18,
      //   color: Colors.blue,
      // ),
      showHeader: false,
      todayTextStyle: TextStyle(
        //오늘 텍스트 컬러
        color: Colors.black,
      ),
      weekdayTextStyle:
          TextStyle(color: Colors.black, fontFamily: 'DX유니고딕 20', fontSize: 12),
      todayBorderColor: Colors.white,
      todayButtonColor: Colors.white,
      selectedDayBorderColor: postime,
      selectedDayButtonColor: postime,
      selectedDayTextStyle: TextStyle(
        color: Colors.black,
      ),
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      // prevDaysTextStyle: TextStyle(
      //   fontSize: 16,
      //   color: Colors.pinkAccent,
      // ),
      // inactiveDaysTextStyle: TextStyle(
      //   color: Colors.tealAccent,
      //   fontSize: 16,
      // ),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.M().format(_targetDateTime);
        });
      },

      onDayLongPressed: (DateTime date) {
        changeTextday(date);
        print('long pressed date $date');
      },
    );

    Widget _resday = Column(
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
                    child: Row(
                  children: [
                    Container(
                        width: 50,
                        child: FlatButton(
                          child: Icon(
                            Icons.navigate_before,
                            color: Colors.white,
                            size: 30,
                          ),
                          // child: Text('>'),
                          onPressed: () {
                            setState(() {
                              _targetDateTime = DateTime(_targetDateTime.year,
                                  _targetDateTime.month - 1);
                              _currentMonth = _targetDateTime.month.toString();

                              //DateFormat.yMMM().format(_targetDateTime);
                            });
                          },
                        )),
                    Container(
                      margin: EdgeInsets.only(left: 90),
                      child: Text(
                        _currentMonth + "월",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'DX유니고딕 20',
                          fontSize: 11,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 85),
                        width: 50,
                        child: FlatButton(
                          child: Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                            size: 30,
                          ),
                          // child: Text('>'),
                          onPressed: () {
                            setState(() {
                              _targetDateTime = DateTime(_targetDateTime.year,
                                  _targetDateTime.month + 1);
                              _currentMonth = _targetDateTime.month.toString();

                              //DateFormat.yMMM().format(_targetDateTime);
                            });
                          },
                        )),
                  ],
                )),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 40.0),
                  child: _calendarCarouselNoHeader,
                ),
              ),
            ],
          ),
        ),
      ],
    );

// 예약 가능 시간

    Widget timebutton(String time, Color color) {
      return Container(
        margin: EdgeInsets.only(top: 5, left: 10),
        width: 65,
        height: 30,
        child: FlatButton(
          color: color,
          child: Text(
            time + ":00",
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'DX유니고딕 20',
            ),
            textAlign: TextAlign.right,
          ),
          onPressed: () {
            changeText(time);
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
                    timebutton("09", postime),
                    timebutton("10", postime),
                    timebutton("11", postime),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7, left: 30),
                child: Row(
                  children: [
                    timebutton("12", postime),
                    timebutton("13", impostime),
                    timebutton("14", postime),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 7, left: 30),
                child: Row(
                  children: [
                    timebutton("15", impostime),
                    timebutton("16", postime),
                    timebutton("17", impostime),
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
                                  currMonth + "." + currDay,
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
                            dayhideWidget();
                          },
                        ),
                        FlatButton(
                          child: Container(
                            width: 125,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.query_builder),
                                Text(
                                  "   " +
                                      '$currtime' +
                                      ":00 - " +
                                      '$nexttime' +
                                      ":00",
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
                            timeVhideWidget();
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
                color: selectColor,
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'DX유니고딕 20',
                  ),
                  textAlign: TextAlign.right,
                ),
                onPressed: () {
                  changeButtonColor(postime);
                },
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

    Widget _readingroom(int studynum) {
      return Column(
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
                      '제 ' + studynum.toString() + '열람실',
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
    }

// 탭뷰
    Widget tabView = Container(
      margin: EdgeInsets.only(top: newtop),
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
              booktime(10, 32),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              booksearch,
              booktime(10, 32),
            ],
          ),
        ),
      ]),
    );

//완료버튼

    Column _buildbookButton(Color color, String label, dynamic context,
        String currMonth, String currDay, String currTime, String nextTime) {
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
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          title: Text(currMonth +
                              "월" +
                              currDay +
                              "일 " +
                              currTime +
                              ":00 - " +
                              nextTime +
                              ":00" +
                              stloc +
                              '에\n예약되었습니다.'),
                          content: Text('닫고 싶으시면 아무곳이나 눌러주세요!'),
                        ));

                Firestore.instance
                    .collection('test')
                    .doc('test')
                    .set({'currDay': currDay, 'currTime?': currTime});
                // firestore
                //     .collection('test')
                //     .document("test")
                //     .setData({'currDay': currDay, 'currTime?': currTime});
              },
            ),
          )
        ],
      );
    }

    Widget bookbuttonfinish = Container(
      margin: const EdgeInsets.only(top: 720, right: 50),
      child: Row(
        // 로우를 자식으로 가짐
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // 세개의 위젯들을 자식들로 가짐
          _buildbookButton(PrimaryColor, '완료', context, currMonth, currDay,
              currtime, nexttime),
        ],
      ),
    );

    return Scaffold(
      // appBar: AppBar(
      //   title: new Text(widget.title),
      // ),
      body: Stack(
        children: <Widget>[
          Container(
            child: Stack(
              children: [
                mybook,
                Transform.translate(
                  offset: Offset(150.0, 251.0),
                  child: FlatButton(
                      color: Colors.grey[300],
                      child: Text(
                        "버튼",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontFamily: 'DX유니고딕 20',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {
                        runApp(ReservationPage());
                      }),
                ),

                Visibility(
                    visible: bookVisible1 &&
                        timeVisible1 &&
                        dayVisible1 &&
                        addVisible1,
                    child: tabs),
                Visibility(
                    visible: bookVisible1 && timeVisible1 && dayVisible1,
                    child: tabView),

                //열람실좌석
                Visibility(
                    visible: bookVisible2, child: _readingroom(studyroomnum)),
                Visibility(visible: bookVisible2, child: booktime(565, 50)),

                // 날짜
                Visibility(visible: dayVisible2, child: _resday),
                Visibility(visible: dayVisible2, child: booktime(565, 50)),

                // 시간
                Visibility(visible: timeVisible2, child: _posrestime),
                Visibility(visible: timeVisible2, child: booktime(565, 50)),

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
