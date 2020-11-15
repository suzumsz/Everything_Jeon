import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:url_launcher/url_launcher.dart';

// 브라우저를 열 링크
const url = 'https://www.mjc.ac.kr/bbs/data/list.do?menu_idx=169';

const double formH = 120;

const PrimaryColor = const Color(0xFFDFE6F3);

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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: size),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget buttonAdd(Alignment direction, String heroTag) {
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
        onPressed: () {
          // Respond to button press
        },
        child: Icon(Icons.add),
      ),
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
          child: Builder(
              builder: (context) => Center(
                    child: FloatingActionButton(
                      heroTag: heroTag,
                      elevation: 0,
                      backgroundColor: PrimaryColor,
                      foregroundColor: Colors.white,
                      mini: true,
                      onPressed: () async {
                        await launch(url,
                            forceWebView: false, forceSafariVC: false);
                        //await launch(url, forceWebView: true, forceSafariVC: true);

                        // Respond to button press
                        switch (btnType) {
                          case 1:
                            break;
                          case 2:
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ThiredRoute()),
                            );
                            break;
                        }
                      },
                      child: Icon(Icons.arrow_forward_ios, size: 17),
                    ),
                  ))));
}

Widget buttonExtended(
    String text, TextStyle textstyle, String heroTag, Color backgroundColor) {
  return Container(
    padding: const EdgeInsets.only(left: 20, top: 10),
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
          },
          label: Text(text, style: textstyle)),
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
          style: new TextStyle(fontSize: 15.0, color: Colors.black),
        ),
      ));
}

Widget borderContainer1 = Container(
  padding: const EdgeInsets.all(15.0),
  margin: const EdgeInsets.all(15.0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    border: Border.all(width: 3, color: PrimaryColor),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("● 10. 31 / 16:00     산업디자인과 취업 특강 이수"),
      Text("● 11. 02 / 18:00     프레젠테이션 잘하기 9주차 과제 제출"),
      Text("● 11. 08 / 24:00     프레젠테이션 잘하기 리포트 제출"),
      buttonAdd(Alignment.centerRight, "btnAdd1"),
    ],
  ),
);

Widget borderContainer2 = Container(
  padding: const EdgeInsets.all(15.0),
  margin: const EdgeInsets.all(15.0),
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(width: 3, color: PrimaryColor)),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("● [긴급] 기숙사생 입사 관련 공지사항"),
      Text("● 비대면 수업 중간고사 시험 안내"),
      Text("● 프레젠테이션 경진대회 결과"),
      buttonArrow(Alignment.centerRight, 1, "btnArrow1"),
    ],
  ),
);

//분실물 찾기
Widget borderContainer3 = Container(
  margin: const EdgeInsets.all(15.0),
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
              Text("     최근 분실물",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("● [체크카트] 정XX님 국민카드"),
              Text("● [에어팟 케이스] 갈색 곰돌이 모양"),
            ],
          ),
          Column(
            children: [
              buttonExtended("분실물 신고", TextStyle(fontWeight: FontWeight.bold),
                  "btnEx2", PrimaryColor),
              buttonExtended("분실물 찾기", TextStyle(fontWeight: FontWeight.bold),
                  "btnEx3", PrimaryColor),
            ],
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: Text("분실물 더보기"),
          ),

          buttonArrow(Alignment.center, 2, "btnArrow2"), //Alignment 안먹음..
        ],
      )
    ],
  ),
);

Container make_textField(String text) {
  String input = "";
  return Container(
    width: 350,
    height: 45,
    padding: const EdgeInsets.only(top: 10),
    child: TextField(
      onChanged: (String str) {
        //바뀔때마다
        input = str;
      },
      autofocus: false,
      style: TextStyle(fontSize: 13.0, color: Color(0xFFbdc6cf)),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: text,
        suffixIcon: IconButton(
          onPressed: () {
            print(input + " 검색!");
          }, //입력했을 때
          icon: Icon(Icons.search),
        ),
        contentPadding:
            const EdgeInsets.only(left: 14.0, bottom: 15.0, top: 0.0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(25.7),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(25.7),
        ),
      ),
    ),
  );
}

Container schoolLogo(String text) {
  return Container(
    padding: EdgeInsets.only(left: 100, top: 15),
    child: Row(
      children: [
        //SvgPicture.asset('images/mytest.svg', width: 30, height: 30),
        Text(
          "김진원 [2019671062]",
          style: TextStyle(fontWeight: FontWeight.bold),
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
                  style: TextStyle(fontSize: 14.0),
                  textAlign: TextAlign.center),
            ),
            padding: EdgeInsets.only(right: 25, bottom: 3),
            onPressed: () {},
          ),
          top: 100,
          left: 280,
        ),
        Positioned(
          child: boxMileage("12P", TextStyle(fontWeight: FontWeight.normal)),
          top: 100,
          left: 340,
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
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          )),
        ),
        Positioned.fill(
          child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Row(
                      children: [
                        addText("공지사항", 25, 15, 0),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: schoolLogo("김진원[2019671062]"),
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

class NoticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //textControl 사용하여 추가

    // ignore: non_constant_identifier_names

    /********************************************** AppBar ***************************************************************/
    return MaterialApp(
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
                    addText("나의 할 일", 20, 15, 15),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 0),
                    )
                  ],
                ),
                borderContainer1,
                addText("학사공지", 20, 15, 15),
                borderContainer2,
                addText("분실물 찾기", 20, 15, 15),
                borderContainer3,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/* 그 뭐냐 그... 그그.....그.......... 아 학사공지 탭 */
class SecondRoute extends StatelessWidget {
  NoticePage myapp = new NoticePage();
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(formH - 40),
            child: make_Appbar(false),
          ),
          body: Text('학사 공지',
              style: new TextStyle(fontSize: 20.0, color: Colors.black)),
        ),
      ],
    );
  }
}

//분실물 더보기
class ThiredRoute extends StatelessWidget {
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(formH - 40),
            child: make_Appbar(false),
          ),
          body: Text(
            '분실물 더보기1',
            style: new TextStyle(fontSize: 20.0, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
