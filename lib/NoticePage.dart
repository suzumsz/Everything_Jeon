import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:url_launcher/url_launcher.dart';
import 'XDinfo_list.dart';
import 'package:intl/intl.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// 브라우저를 열 링크
const url = 'https://www.mjc.ac.kr/bbs/data/list.do?menu_idx=169';

const double formH = 120;
bool USE_FIRESTORE_EMULATOR = false;
const PrimaryColor = const Color(0xFFDFE6F3);
AnimationController aniController;
Animation<double> animation;

class User {
  String name;
  String classNum;

  User(this.name, this.classNum);
}

class Notice {
  String notice1, notice2, notice3;

  Notice(this.notice1, this.notice2, this.notice3);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(NoticePage());
}

class NoticeAppPage extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NoticePage(),
    );
  }
}

class NoticePage extends StatefulWidget {
  NoticePageState createState() => NoticePageState();
}

class NoticePageState extends State<NoticePage> {
  final _firestore = Firestore.instance;
  final _auth = FirebaseAuth.instance;
  final _currentUser = FirebaseAuth.instance.currentUser;

  /* 나의 할 일 추가 */
  String addCon = '';
  String addDate = '';
  String addTime = '';
  /* */
  Notice notice;

  List<String> contents = List<String>();
  DateTime _selectedTime; //날짜
  String _selectedTime2; //시간
  String _selectedTime3;

  bool startFlag = true;
  String _value = '';
  bool a = true;
  String mText = "Press to hide";
  String temp, notice1, notice2, notice3;

  Widget _getNotice(int i) {
    return StreamBuilder<DocumentSnapshot>(
        stream: _firestore.collection("Notice").doc("notice").snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          final documents = snapshot.data;
          return Container(child: _buildItemWidget(documents, i));
        });
  }

  Widget _buildItemWidget(DocumentSnapshot docs, int i) {
    final notice = Notice(docs['notice1'], docs['notice2'], docs['notice3']);

    print(notice.notice1);
    print(notice.notice2);
    print(notice.notice3);

    switch (i) {
      case 1:
        return Text("⦁ " + notice.notice1);
      case 2:
        return Text("⦁ " + notice.notice2);
      case 3:
        return Text("⦁ " + notice.notice3);
    }
  }

  Widget _buildIgetName(DocumentSnapshot docs, int i) {
    final user = User(docs['Name'], docs['classNum']);

    switch (i) {
      case 1:
        {
          return Container(
            margin: EdgeInsets.only(left: 102, top: 13),
            child: Row(
              children: [
                //SvgPicture.asset('images/mytest.svg', width: 30, height: 30),
                Text(
                  user.name + " [" + user.classNum + "]",
                  style: TextStyle(
                    fontFamily: 'DX유니고딕 20',
                    fontSize: 13,
                    color: const Color(0xff0a1736),
                  ),
                )
              ],
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
          return Expanded(child: _buildIgetName(documents, i));
        });
  }

  void _visibilitymethod() {
    setState(() {
      if (a) {
        a = false;
        mText = "Press to show";
        print(mText);
      } else {
        a = true;
        mText = "Press to hide";
        print(mText);
      }
    });
  }

  String _getFirebase(String collection, String document, String field) {
    Firestore.instance
        .collection(collection)
        .document(document)
        .get()
        .then((DocumentSnapshot ds) {
      return ds.data()[field];
    });
  }

  void _addFirebase(String collection, Map field) {
    Firestore.instance.collection(collection).add(field);
  }

  void _setFirebase(String collection, String document, Map field) {
    Firestore.instance.collection(collection).document(document).setData(field);
  }

  String timePicker() {
    Future<TimeOfDay> selectedTime = showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );

    selectedTime.then((timeOfDay) {
      setState(() {
        _selectedTime2 = '${timeOfDay.hour}시   ${timeOfDay.minute}분';
        _selectedTime3 = '${timeOfDay.hour}:${timeOfDay.minute}';
        print(_selectedTime2);
        return _selectedTime2;
      });
    });
    return null;
  }

  DateTime datePickter() {
    Future<DateTime> selectedDate = showDatePicker(
      context: context,
      initialDate: DateTime.now(), // 초깃값
      firstDate: DateTime(2018), // 시작일
      lastDate: DateTime(2030), // 마지막일
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.dark(), // 다크테마
          child: child,
        );
      },
    );
    selectedDate.then((dateTime) {
      setState(() {
        _selectedTime = dateTime;
        print('날짜 선택 : ' + _selectedTime.toString());
        return _selectedTime;
      });
    });
    return null;
  }

  Container addText(String text, double size, double _left, double _top) {
    return Container(
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: _left, top: _top),
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'DX유니고딕 20',
                    fontSize: size,
                    color: const Color(0xff0c1939),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buttonExtended(
      String text, TextStyle textstyle, String heroTag, Color backgroundColor) {
    return Container(
      padding: const EdgeInsets.only(left: 12, top: 10),
      child: Container(
        width: 90.0,
        height: 30.0,
        child: FloatingActionButton.extended(
            heroTag: heroTag,
            elevation: 0,
            backgroundColor: backgroundColor,
            foregroundColor: Colors.black,
            onPressed: () {
              // Respond to button press
              if (text == "분실물 신고") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => XDinfo_list_tab(1)),
                );
              } else if (text == "분실물 찾기") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => XDinfo_list_tab(2)),
                );
              }
            },
            label: Text(text, style: textstyle)),
      ),
    );
  }

  Widget buttonAdd_plus() {
    return Container(
      width: 25,
      height: 25,
      child: ClipOval(
        child: Material(
          color: PrimaryColor, // button color
          child: InkWell(
            splashColor: Colors.red, // inkwell color
            child: SizedBox(
                width: 56,
                height: 56,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                )),
            onTap: () {
              addDate = DateFormat('⦁ MM. dd').format(
                  _selectedTime == null ? DateTime.now() : _selectedTime);
              addTime = _selectedTime3 == null ? "0:0" : _selectedTime3;

              contents.add(addDate + ' / ' + addTime + '     ' + addCon);
              _visibilitymethod(); //나왔다가
              _visibilitymethod(); //가리기
            },
          ),
        ),
      ),
    );
  }

  Widget buttonAdd(Alignment direction, String heroTag) {
    return Container(
      alignment: direction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          a == true
              ? new Container(
                  width: 25.0,
                  height: 25.0,
                  child: FloatingActionButton(
                    heroTag: heroTag,
                    elevation: 0,
                    backgroundColor: PrimaryColor,
                    foregroundColor: Colors.white,
                    mini: true,
                    onPressed: () {
                      if (heroTag == "btnAdd1") {
                        _visibilitymethod();
                      }
                      // Respond to button press
                    },
                    child: Icon(Icons.add),
                  ),
                )
              : new Container(),
          a == true
              ? new Container()
              : new Container(
                  margin: EdgeInsets.only(left: 0, right: 0, top: 10),
                  width: 350,
                  height: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [buttonAdd_plus(), Text('  나의 할 일 추가 하기')],
                      ),
                      Row(
                        children: [
                          //작은 상자
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '내용',
                              style: TextStyle(
                                fontFamily: 'DX유니고딕 20',
                                fontSize: 12,
                                color: const Color(0xff0c1939),
                              ),
                            ),
                            margin: EdgeInsets.only(top: 15),
                            width: 35,
                            height: 30,
                            decoration: BoxDecoration(
                              color: PrimaryColor,
                              border: Border(
                                right:
                                    BorderSide(color: Colors.white, width: 0.8),
                              ),
                            ),
                          ),
                          //내용 - 큰상자
                          Expanded(
                            child: Container(
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.only(left: 10, bottom: 18)),
                                onChanged: (result) {
                                  addCon = result;
                                },
                              ),
                              margin: EdgeInsets.only(top: 15),
                              height: 30,
                              color: PrimaryColor,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          //작은 상자
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '날짜',
                              style: TextStyle(
                                fontFamily: 'DX유니고딕 20',
                                fontSize: 12,
                                color: const Color(0xff0c1939),
                              ),
                            ),
                            margin: EdgeInsets.only(top: 15),
                            width: 35,
                            height: 30,
                            decoration: BoxDecoration(
                              color: PrimaryColor,
                              border: Border(
                                right:
                                    BorderSide(color: Colors.white, width: 0.8),
                              ),
                            ),
                          ),
                          //날짜 - 큰상자
                          Expanded(
                            child: Container(
                              child: FlatButton(
                                onPressed: () {
                                  datePickter(); //날짜 선택 시 _selectedTime 변수에 날짜 값 저장
                                },
                                child: Text(
                                  DateFormat('MM월   dd일').format(
                                      _selectedTime == null
                                          ? DateTime.now()
                                          : _selectedTime),
                                  style: TextStyle(
                                    fontFamily: 'DX유니고딕 20',
                                    fontSize: 12,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                              margin: EdgeInsets.only(top: 15, right: 10),
                              height: 30,
                              color: PrimaryColor,
                            ),
                          ),
                          //작은 상자
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              '시간',
                              style: TextStyle(
                                fontFamily: 'DX유니고딕 20',
                                fontSize: 12,
                                color: const Color(0xff0c1939),
                              ),
                            ),
                            margin: EdgeInsets.only(top: 15, left: 10),
                            width: 35,
                            height: 30,
                            decoration: BoxDecoration(
                              color: PrimaryColor,
                              border: Border(
                                right:
                                    BorderSide(color: Colors.white, width: 0.8),
                              ),
                            ),
                          ),
                          //시간 - 큰상자
                          Expanded(
                            child: Container(
                              child: FlatButton(
                                onPressed: () {
                                  timePicker();
                                },
                                child: Text(
                                  _selectedTime2 == null
                                      ? "0시   0분"
                                      : _selectedTime2,
                                  style: TextStyle(
                                    fontFamily: 'DX유니고딕 20',
                                    fontSize: 12,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                              margin: EdgeInsets.only(top: 15),
                              height: 30,
                              color: PrimaryColor,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        //완료 버튼
                        margin: EdgeInsets.only(top: 10),
                        child: Container(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Container(
                            width: 70.0,
                            height: 30.0,
                            child: FloatingActionButton.extended(
                                heroTag: 'btnEx6',
                                elevation: 0,
                                backgroundColor: PrimaryColor,
                                foregroundColor: Colors.black,
                                onPressed: () {
                                  // Respond to button press
                                  _visibilitymethod();
                                },
                                label: Text('닫기')),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  Widget buttonArrow(Alignment direction, int btnType, String heroTag) {
    //btnType 1 : 학사공지
    //btnType 2 : 분실물 찾기
    return Container(
      alignment: direction,
      child: Container(
        width: 25.0,
        height: 25.0,
        child: FloatingActionButton(
          heroTag: heroTag,
          elevation: 0,
          backgroundColor: PrimaryColor,
          foregroundColor: Colors.white,
          mini: true,
          onPressed: () async {
            //await launch(url, forceWebView: true, forceSafariVC: true);

            // Respond to button press
            switch (btnType) {
              case 1:
                await launch(url, forceWebView: false, forceSafariVC: false);
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => XDinfo_list_tab(0)),
                  //MaterialPageRoute(builder: (context) => Barcode())
                );
                break;
            }
          },
          child: Icon(Icons.arrow_forward_ios, size: 17),
        ),
      ),
    );
  }

  Widget boxMileage(String text, TextStyle textstyle) {
    return Container(
        width: 30,
        height: 30,
        decoration: new BoxDecoration(
          color: Colors.white,
          border: new Border.all(color: Colors.black, width: 1.0),
          borderRadius: new BorderRadius.circular(30.0),
        ),
        child: new Center(
          child: new Text(
            '9P',
            style: new TextStyle(fontSize: 14.0, color: Colors.black),
          ),
        ));
  }

  Widget borderContainer1_ViewContent() {
    for (int i = 0; i < contents.length; i++) Text(contents[i].toString());
  }

  Widget borderContainer1() {
    return Container(
      padding: const EdgeInsets.all(15.0),
      //margin: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.only(right: 26, left: 26, top: 8, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 3, color: PrimaryColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < contents.length; i++) Text(contents[i]),
          /*borderContainer1_AddContent("⦁ 10. 31 / 16:00     산업디자인과 취업 특강 이수"),
          borderContainer1_AddContent(
              "⦁ 11. 02 / 18:00     프레젠테이션 잘하기 9주차 과제 제출"),
          borderContainer1_AddContent("⦁ 11. 08 / 24:00     프레젠테이션 잘하기 리포트 제출"),
          */
          buttonAdd(Alignment.centerRight, "btnAdd1"),
        ],
      ),
    );
  }

  Widget borderContainer2() {
    return Container(
      padding: const EdgeInsets.all(15.0),
      //margin: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.only(right: 26, left: 26, top: 8, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 3, color: PrimaryColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getNotice(1),
          _getNotice(2),
          _getNotice(3),
          buttonArrow(Alignment.centerRight, 1, "btnArrow1"),
        ],
      ),
    );
  }

//분실물 찾기
  Widget borderContainer3() {
    return Container(
      margin: const EdgeInsets.only(right: 26, left: 26, top: 8, bottom: 10),
      //margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 3, color: PrimaryColor)),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("   최근 분실물",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("⦁ [체크카드] 정XX님 국민카드"),
                  Text("⦁ [에어팟 케이스] 갈색 곰돌이 모양"),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                child: Column(
                  children: [
                    buttonExtended(
                        "분실물 신고",
                        TextStyle(fontWeight: FontWeight.normal),
                        "btnEx2",
                        PrimaryColor),
                    buttonExtended(
                        "분실물 찾기",
                        TextStyle(fontWeight: FontWeight.normal),
                        "btnEx3",
                        PrimaryColor),
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5),
                child: Text("분실물 더보기"),
              ),
              /////////////////////////////////////////////
              buttonArrow(Alignment.center, 2, 'btnEx8')
            ],
          )
        ],
      ),
    );
  }

  Container make_Appbar(bool show) {
    Stack get;
    if (show == true) {
      get = Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            height: 30,
            child: FlatButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0)),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("마일리지",
                    style: TextStyle(fontSize: 12.0),
                    textAlign: TextAlign.center),
              ),
              padding: EdgeInsets.only(right: 23, bottom: 3),
              onPressed: () {},
            ),
            top: 100,
            left: 300,
          ),
          Positioned(
            child: boxMileage("12P", TextStyle(fontWeight: FontWeight.normal)),
            top: 100,
            left: 360,
          ),
        ],
      );
    } else {
      get = Stack(); //비움
    }

    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: [
          AppBar(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            )),
          ),
          Positioned.fill(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(top: 55),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          addText("공지사항", 25, 28, 1),
                          Transform.translate(
                            offset: Offset(121.0, 7.5),
                            child: Container(
                              width: 21.0,
                              height: 21.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                          Transform.translate(
                            // 원형로고
                            offset: Offset(102.0, 7.5),
                            child: Container(
                              width: 17.0,
                              height: 17.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      const AssetImage('images/circlelogo.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: _getDB(1),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          //make_textField('검색어를 입력하세요.'),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          get,
        ],
      ),
    );
  }

//textControl 사용하여 추가
  @override
  Widget build(BuildContext context) {
    print(startFlag);
    if (startFlag) {
      contents.clear();
      contents.add("⦁ 10. 31 / 16:00     산업디자인과 취업 특강 이수");
      contents.add("⦁ 11. 02 / 18:00     생활영어 9주차 과제 제출");
      contents.add("⦁ 11. 08 / 24:00     문학과 사회 리포트 제출");
      startFlag = false;
    }
    // ignore: non_constant_identifier_names

    /********************************************** AppBar ***************************************************************/
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      theme: ThemeData(
        //background 설정
        primaryColor: PrimaryColor,
      ),
      home: Stack(
        children: [
          Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(formH),
              child: make_Appbar(true), //AppBar
            ),
            body: ListView(
              children: [
                Row(
                  children: [
                    addText("나의 할 일", 20, 32, 22),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 0),
                    )
                  ],
                ),
                borderContainer1(),
                addText("학사공지", 20, 32, 5),
                borderContainer2(),
                addText("분실물 찾기", 20, 32, 5),
                borderContainer3(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
