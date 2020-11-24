import 'dart:collection';

import 'package:everything_jeon/NoticePage.dart';
import 'package:flutter/material.dart';

class XDinfo_list_tab extends StatefulWidget {
  int selectTap;
  XDinfo_list_tab(int selectTap) {
    this.selectTap = selectTap;
  }
  @override
  XDinfo_list_state createState() => XDinfo_list_state(selectTap);
}

class XDinfo_list_state extends State<XDinfo_list_tab>
    with SingleTickerProviderStateMixin {
  int selectTap;
  XDinfo_list_state(int selectTap) {
    this.selectTap = selectTap;
  }
  Container make_textField(String text) {
    String input = "";
    return Container(
      width: 300,
      height: 45,
      margin: EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(top: 10),
      child: TextField(
        onChanged: (String str) {
          //바뀔때마다
          input = str;
        },
        autofocus: false,
        style: TextStyle(fontSize: 13.0, color: Color(0xFF000000)),
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
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(27.0)),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(27.0)),
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }

  TabController _controller;

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
              if (text == "분실물 신고") {
                //_controller.animateTo(1);
              }
              else if (text == "분실물 검색") _controller.animateTo(2);
            },
            label: Text(text, style: textstyle)),
      ),
    );
  }

  //분실물 리스트 박스
  Widget lostProperetyBox(String imgSrc, String title, String content) {
    return FlatButton(
      onPressed: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
            width: 132.0,
            height: 84.0,
            decoration: BoxDecoration(
              color: const Color(0xffdfe6f3),
            ),
          ),
          Container(
              child: Flexible(
                  child: Container(
            margin: EdgeInsets.only(top: 8),
            child: Column(
              children: <Widget>[
                Text(
                  title + "\n\n" + content,
                  maxLines: 4,
                  style: TextStyle(
                    fontFamily: 'DX유니고딕 20',
                    fontSize: 12,
                    color: const Color(0xff0c1939),
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ))),
        ],
      ),
    );
  }

  //분실물 검색 리스트
  Widget lostProperetySearchBox(String imgSrc, String title, String content) {
    return new Container(
      child: new Material(
        child: new FlatButton(
          color: Color(0xFFF9FAFD),
          onPressed: () {},
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 25),
                child: Text(
                  '제목  :  ' + title,
                  style: TextStyle(
                    fontFamily: 'DX유니고딕 20',
                    fontSize: 12,
                    color: const Color(0xff0c1939),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                height: 140.0,
                decoration: BoxDecoration(
                  color: const Color(0xffdfe6f3),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  '본분  :  ' + content,
                  style: TextStyle(
                    fontFamily: 'DX유니고딕 20',
                    fontSize: 12,
                    color: const Color(0xff0c1939),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tab1(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Container(
            margin: EdgeInsets.only(left: 20, bottom: 0),
            child: Text(
              '분실물 신고목록',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 20,
                color: const Color(0xff0c1939),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 29),
          child: ListView(
            children: [
              Column(
                children: [
                  lostProperetyBox("", "[체크카드] 정XX님 국민카드",
                      "예체능관 정문에 떨어져 있어서 경비실에 맡겨놨어요! 정X님꺼에요."),
                  lostProperetyBox("", "[체크카드] 정XX님 국민카드",
                      "예체능관 정문에 떨어져 있어서 경비실에 맡겨놨어요! 정X님꺼에요."),
                  lostProperetyBox("", "[체크카드] 정XX님 국민카드",
                      "예체능관 정문에 떨어져 있어서 경비실에 맡겨놨어요! 정X님꺼에요."),
                  lostProperetyBox("", "[체크카드] 정XX님 국민카드",
                      "예체능관 정문에 떨어져 있어서 경비실에 맡겨놨어요! 정X님꺼에요."),
                  lostProperetyBox("", "[체크카드] 정XX님 국민카드",
                      "예체능관 정문에 떨어져 있어서 경비실에 맡겨놨어요! 정X님꺼에요."),
                  lostProperetyBox("", "[체크카드] 정XX님 국민카드",
                      "예체능관 정문에 떨어져 있어서 경비실에 맡겨놨어요! 정X님꺼에요."),
                  lostProperetyBox("", "[체크카드] 정XX님 국민카드",
                      "예체능관 정문에 떨어져 있어서 경비실에 맡겨놨어요! 정X님꺼에요."),
                  lostProperetyBox("", "[체크카드] 정XX님 국민카드",
                      "예체능관 정문에 떨어져 있어서 경비실에 맡겨놨어요! 정X님꺼에요."),
                  lostProperetyBox("", "[체크카드] 정XX님 국민카드",
                      "예체능관 정문에 떨어져 있어서 경비실에 맡겨놨어요! 정X님꺼에요."),
                  lostProperetyBox("", "[체크카드] 정XX님 국민카드", "예체능관 어져 있어서요."),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget tab2() {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Container(
            margin: EdgeInsets.only(left: 20, bottom: 0),
            child: Text(
              '분실물 신고',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 20,
                color: const Color(0xff0c1939),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 10,
                color: const Color(0xffff0000),
              ),
              children: [
                TextSpan(
                  text: '*주의사항',
                ),
                TextSpan(
                  text: '\n분실물 발견 시 학교 [본관/인터넷 프라자] 에 맡기거나 분실 장소에 그대로 나두어 주세요.',
                  style: TextStyle(
                    fontSize: 7.5,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, top: 15),
          child: Container(
            width: 307.0,
            height: 167.0,
            decoration: BoxDecoration(
              color: const Color(0xffdfe6f3),
            ),
          ),
        ),

        //제목
        Container(
          margin: EdgeInsets.only(left: 20, top: 10),
          child: Row(
            children: <Widget>[
              Text(
                '제목 :   ',
                style: TextStyle(
                  fontFamily: 'DX유니고딕 20',
                  fontSize: 12,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                width: 270,
                child: TextField(
                  onChanged: (result) {},
                  //onSaved: (value) => _email = value,
                ),
              ),
            ],
          ),
        ),
        //본분
        Container(
          margin: EdgeInsets.only(left: 20, top: 0),
          child: Row(
            children: <Widget>[
              Text(
                '본문 :   ',
                style: TextStyle(
                  fontFamily: 'DX유니고딕 20',
                  fontSize: 12,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                width: 270,
                child: TextField(
                  onChanged: (result) {},
                  //onSaved: (value) => _email = value,
                ),
              ),
            ],
          ),
        ),

        Container(
          color: Colors.white,
          margin: EdgeInsets.only(left: 220, top: 10),
          child: buttonExtended(
              "완료",
              TextStyle(
                  fontFamily: 'DX유니고딕 20',
                  fontSize: 12,
                  color: const Color(0xff000000)),
              'btnEx10',
              PrimaryColor),
        )
      ],
    ));
  }

  Widget tab3() {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Container(
            margin: EdgeInsets.only(left: 20, bottom: 0),
            child: Text(
              '분실물 검색',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 20,
                color: const Color(0xff0c1939),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Container(
          color: Color(0xFFF9FAFD),
          margin: EdgeInsets.only(top: 45, left: 20, right: 20),
          child: ListView(
            children: [
              Column(
                children: [
                  make_textField("검색어를 입력해주세요."),
                  lostProperetySearchBox("", "나는 카드에요", "히히 나는 카드다"),
                  lostProperetySearchBox("", "마춤뻡 파괘자", "이거슨 네가 일어벌인 물건이애요"),
                  lostProperetySearchBox("", "아기상어 뚜루루루뚜루루뚜", "엄마상어 뚜루루"),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();

    // SingleTickerProviderStateMixin를 상속 받아서
    // vsync에 this 형태로 전달해야 애니메이션이 정상 처리된다.
    _controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.animateTo(this.selectTap);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: [
          /* 박스 */
          Container(
            margin: EdgeInsets.only(left: 27, top: 182),
            padding: EdgeInsets.only(left: 0, top: 125),
            width: 361.0,
            height: 573.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(width: 3.0, color: const Color(0xffdfe6f3)),
            ),
            child: Stack(
              children: [
                DefaultTabController(
                  length: 3,
                  child: Scaffold(
                    backgroundColor: Colors.white,
                    appBar: PreferredSize(
                      preferredSize: Size.fromHeight(-24),
                      child: AppBar(
                        backgroundColor: Colors.white,
                        elevation: 0,
                        automaticallyImplyLeading: false,
                        bottom: TabBar(
                          controller: _controller,
                          tabs: [
                            Tab(
                              child: Container(),
                            ),
                            Tab(
                              child: Container(),
                            ),
                            Tab(
                              child: Container(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    body: TabBarView(
                      controller: _controller,
                      children: [
                        tab1(context),
                        tab2(),
                        tab3(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          /* */
          // Adobe XD layer: 'Background' (shape)
          Container(
            width: MediaQuery.of(context).size.width,
            height: 113.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25.0),
                bottomLeft: Radius.circular(25.0),
              ),
              color: const Color(0xffdfe6f3),
            ),
          ),
          Transform.translate(
            offset: Offset(27.0, 57.0),
            child: Text(
              '공지사항',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 25,
                color: const Color(0xff0c1939),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(265.0, 72.0),
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
            offset: Offset(27.0, 141.0),
            child: Text(
              '분실물 리스트',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 20,
                color: const Color(0xff0c1939),
              ),
              textAlign: TextAlign.left,
            ),
          ),

          Transform.translate(
            offset: Offset(61.0, 210.0),
            child: Text(
              '최근 분실물',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(61.0, 233.0),
            child: Text(
              '[체크카드] 정XX님 국민카드',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(61.0, 256.0),
            child: Text(
              '[에어팟 케이스] 갈색 곰돌이 모양',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),

          //점박이
          Transform.translate(
            offset: Offset(48.0, 240.0),
            child: Container(
              width: 6.0,
              height: 6.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff0a1736),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(48.0, 263.0),
            child: Container(
              width: 6.0,
              height: 6.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff0a1736),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(255.0, 200.0),
            child: Container(
              width: 105,
              height: 40,
              child: buttonExtended(
                  "분실물 신고",
                  TextStyle(
                    fontFamily: 'DX유니고딕 20',
                    fontSize: 12,
                    color: const Color(0xff000000),
                  ),
                  "btnEx4",
                  PrimaryColor),
            ),
          ),

          Transform.translate(
            offset: Offset(255.0, 245.0),
            child: Container(
              width: 105,
              height: 40,
              child: buttonExtended(
                  "분실물 검색",
                  TextStyle(
                    fontFamily: 'DX유니고딕 20',
                    fontSize: 12,
                    color: const Color(0xff000000),
                  ),
                  "btnEx5",
                  PrimaryColor),
            ),
          ),
          Transform.translate(
            offset: Offset(241.0, 71.0),
            child: Container(
              width: 21.0,
              height: 21.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(244.0, 74.0),
            child: Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff205072),
              ),
            ),
          ),
          
          Transform.translate(
            // 원형로고
            offset: Offset(243.0, 73.0),
            child: Container(
              width: 17.0,
              height: 17.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/circlelogo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
