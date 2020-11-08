import 'package:flutter/material.dart';

class NoticePage extends StatelessWidget {
  static const PrimaryColor = const Color(0xFFDFE6F3);
  @override
  Widget build(BuildContext context) {
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

    //Buttons
    Widget buttonExtended(String text, TextStyle textstyle, String hereTag) {
      return Container(
        padding: const EdgeInsets.only(left: 40, top: 15),
        child: Container(
          width: 90.0,
          height: 30.0,
          child: FloatingActionButton.extended(
              heroTag: hereTag,
              elevation: 0,
              backgroundColor: PrimaryColor,
              foregroundColor: Colors.black,
              onPressed: () {
                // Respond to button press
              },
              label: Text(
                text,
                style: textstyle,
              )),
        ),
      );
    }

    Widget buttonAdd(Alignment direction, String hereTag) {
      return Container(
        alignment: direction,
        child: Container(
          width: 25.0,
          height: 25.0,
          child: FloatingActionButton(
            heroTag: hereTag,
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

    Widget buttonArrow(Alignment direction, String hereTag) {
      return Container(
          alignment: direction,
          child: Container(
            width: 25.0,
            height: 25.0,
            child: FloatingActionButton(
              heroTag: hereTag,
              elevation: 0,
              backgroundColor: PrimaryColor,
              foregroundColor: Colors.white,
              mini: true,
              onPressed: () {
                // Respond to button press
              },
              child: Icon(Icons.arrow_forward_ios, size: 17),
            ),
          ));
    }

    //box
    Widget boxMileage(String text, TextStyle textstyle) {
      return Container(
          width: 30,
          height: 30,
          decoration: new BoxDecoration(
            color: Colors.white,
            border: new Border.all(color: Colors.black, width: 3.0),
            borderRadius: new BorderRadius.circular(30.0),
          ),
          child: new Center(
            child: new Text(
              '9P',
              style: new TextStyle(fontSize: 15.0, color: Colors.black),
            ),
          ));
    }

    //border
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
          buttonArrow(Alignment.centerRight, "btnArrow1"),
        ],
      ),
    );

    Widget borderContainer3 = Container(
      padding: const EdgeInsets.all(15.0),
      margin: const EdgeInsets.all(15.0),
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

              //이 인성문제 있는 코드
              Column(
                children: [
                  buttonExtended("분실물 신고",
                      TextStyle(fontWeight: FontWeight.bold), "btnEx2"),
                  buttonExtended("분실물 찾기",
                      TextStyle(fontWeight: FontWeight.bold), "btnEx3"),
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

              buttonArrow(Alignment.center, "btnArrow2"), //Alignment 안먹음..
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
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: size),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(140.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            AppBar(
              backgroundColor: PrimaryColor,
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
                            make_textField('검색어를 입력하세요.'),
                          ],
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              addText("나의 할 일", 20, 15, 15),
              Container(
                  padding: EdgeInsets.only(left: 150, top: 0),
                  child: Row(
                    children: [
                      Stack(
                        overflow: Overflow.visible,
                        children: <Widget>[
                          Container(
                            child: buttonExtended(
                                "",
                                TextStyle(fontWeight: FontWeight.normal),
                                "btnEx1"),
                          ),
                          Positioned(
                            child: boxMileage(
                                "9P", TextStyle(fontWeight: FontWeight.normal)),
                            bottom: 0,
                            left: 100,
                          ),
                          Positioned(
                            child: Text(
                              '마일리지',
                              style: new TextStyle(
                                  fontSize: 13.0, color: Colors.black),
                            ),
                            bottom: 6,
                            left: 48,
                          ),
                        ],
                      ),
                    ],
                  ))
            ],
          ),
          borderContainer1,
          addText("학사공지", 20, 15, 15),
          borderContainer2,
          addText("분실물 찾기", 20, 15, 15),
          borderContainer3,
        ],
      ),
    );
  }
}
