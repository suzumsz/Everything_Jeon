import 'dart:io';
import 'package:image_picker/image_picker.dart';
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
  bool startFlag = true;
  bool searchFlag = false;
  List<Widget> lostPack = List<Widget>();
  List<Widget> backup_lostPack = List<Widget>();
  List<Widget> first_lostPack = List<Widget>();
  List<String> lostPack_title = List<String>();

  int selectTap;
  File mPhoto;
  String addTitle, addContent;
  XDinfo_list_state(int selectTap) {
    this.selectTap = selectTap;
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("분실물 신고"),
          content: new Text("분실물 등록이 완료되었습니다."),
          actions: <Widget>[
            new FlatButton(
              child: new Text("닫기"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  Container make_textField(String text) {
    searchFlag = true;
    String input = "";
    return Container(
      width: 300,
      height: 45,
      margin: EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(top: 10),
      child: TextField(
        onChanged: (String str) {
          input = str;
          lostPack.clear();
          print("backup lostPack : " + backup_lostPack.length.toString());
          for (int idx = 0; idx < backup_lostPack.length; idx++) {
            if (lostPack_title[idx].contains(str)) {
              lostPack.add(backup_lostPack[idx]);
              print(lostPack_title[idx] +
                  " : " +
                  str +
                  lostPack.length.toString());
            }
          }
        },
        onTap: () {
          this.selectTap = 2;
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
            },
            //입력했을 때
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

  Widget buttonExtended(String text, TextStyle textstyle, String heroTag,
      Color backgroundColor, BuildContext context) {
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
                _controller.animateTo(1);
              } else if (text == "분실물 검색") {
                _controller.animateTo(2);
              } else if (text == "완료") {
                print('추가 완료');
                lostPack_title.add(addTitle);
                lostPack.add(
                    lostProperetySearchBox("", addTitle, addContent, mPhoto));
                first_lostPack.add(
                    lostProperetySearchBox("", addTitle, addContent, mPhoto));

                backup_lostPack = List.from(first_lostPack);
                print("first lostPack : " + first_lostPack.length.toString());
                _showDialog();
              }
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
            width: 132.0,
            height: 84.0,
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 10),
            decoration: BoxDecoration(
              color: const Color(0xffdfe6f3),
            ),
            child: Image.asset(imgSrc, fit: BoxFit.fill),
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
  Widget lostProperetySearchBox(
      String imgSrc, String title, String content, File f) {
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
                child: f == null
                    ? Image.asset(imgSrc, fit: BoxFit.fill)
                    : Image.file(
                        f,
                        fit: BoxFit.fill,
                      ),
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

  //
  //
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
                  lostProperetyBox("images/notice/airpod.jpg", "[에어팟] 에어팟 한쪽",
                      "공학관 3층 301호 실습실에 에어팟 한쪽이 있어서 과사무실에 맡겨놨습니다 !"),
                  lostProperetyBox("images/notice/airpod2.jpg", "[에어팟] 에어팟",
                      "도서실에서 에어팟이 있어서 도서관 관계자 분께 맡겨놨습니다."),
                  lostProperetyBox("images/notice/bapuli.jpg", "[인형] 바푸리",
                      "독서실에서 바푸리 인형이 있어서 도서관 관계자 분께 맡겨놨습니다."),
                  lostProperetyBox(
                      "images/notice/cloth.jpg", "[옷] 츄리닝", "식당에서 츄리닝 옷이 있어요"),
                  lostProperetyBox("images/notice/libstick.jpg", "[립스틱] 립스틱",
                      "예체능관 정문에 떨어져 있어서 경비실에 맡겨놨어요!"),
                  lostProperetyBox("images/notice/pencilcase.jpg", "[필통] 필통",
                      "본관 801호 에서 필통이 발견되서 과사에 맡겨놨어요"),
                  lostProperetyBox("images/notice/powerbank.jpg", "[배터리] 배터리",
                      "예체능관 정문에 떨어져 있어서 경비실에 맡겨놨어요!"),
                  lostProperetyBox("images/notice/ring.jpg", "[반지] 반지",
                      "독서실에서 인형이 있어서 도서관 관계자 분께 맡겨놨어요!"),
                  lostProperetyBox("images/notice/suncushion.jpg", "[화장품] 선쿠션",
                      "본관 4층 화장실에서 선쿠션이 있어서 4층 사무실에 맡겨놨어요"),
                  lostProperetyBox("images/notice/tomato.jpg", "[토마토] 토마토",
                      "잘 익은 토마토가 정문앞에 있어서 제가 먹었어요"),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget tab2(BuildContext context) {
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
                  text: '\n분실물 발견 시 학교 [본관/인터넷 프라자] 에 맡기거나 분실 장소에 그대로 놔두어 주세요.',
                  style: TextStyle(
                    fontSize: 7.5,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        GestureDetector(
          onTap: () {
            getImage();
            this.selectTap = 1;
          },
          child: Container(
            margin: EdgeInsets.only(left: 20, top: 15),
            child: Container(
              child: mPhoto == null
                  ? Container()
                  : Image.file(
                      mPhoto,
                      fit: BoxFit.fill,
                    ),
              width: 307.0,
              height: 167.0,
              decoration: BoxDecoration(
                color: const Color(0xffdfe6f3),
              ),
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
                  onChanged: (result) {
                    addTitle = result;
                  },
                  onTap: () {
                    selectTap = 1;
                  },
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
                  onChanged: (result) {
                    addContent = result;
                  },
                  onTap: () {
                    selectTap = 1;
                  },
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
              PrimaryColor,
              context),
        )
      ],
    ));
  }

  Widget tab3(BuildContext context) {
    print("길이 : " + lostPack.length.toString());
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
                  for (int idx = 0; idx < lostPack.length; idx++) lostPack[idx],
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  // 앨범과 카메라 양쪽에서 호출. ImageSource.gallery와 ImageSource.camera 두 가지밖에 없다.
  void getImage() async {
    // await 키워드 때문에 setState 안에서 호출할 수 없다.
    // pickImage 함수 외에 pickVideo 함수가 더 있다.
    PickedFile f = await ImagePicker().getImage(source: ImageSource.camera);
    setState(() => mPhoto = File(f.path));
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
    print("Notice Loading...");
    if (startFlag) {
      lostPack.clear();
      lostPack_title.clear();

      lostPack_title.add("[에어팟] 에어팟 한쪽");
      lostPack_title.add("[에어팟] 에어팟");
      lostPack_title.add("[인형] 바푸리");
      lostPack_title.add("[옷] 츄리닝");
      lostPack_title.add("[립스틱] 립스틱");
      lostPack_title.add("[필통] 필통");
      lostPack_title.add("[배터리] 배터리");
      lostPack_title.add("[반지] 반지");
      lostPack_title.add("[화장품] 선쿠션");
      lostPack_title.add("[토마토] 토마토");

      lostPack.add(lostProperetySearchBox("images/notice/airpod.jpg",
          "[에어팟] 에어팟 한쪽", "공학관 3층 301호 실습실에 에어팟 한쪽이 있어서 과사무실에 맡겨놨습니다 !", null));
      lostPack.add(lostProperetySearchBox("images/notice/airpod2.jpg",
          "[에어팟] 에어팟", "도서실에서 에어팟이 있어서 도서관 관계자 분께 맡겨놨습니다.", null));
      lostPack.add(lostProperetySearchBox("images/notice/bapuli.jpg",
          "[인형] 바푸리", "독서실에서 바푸리 인형이 있어서 도서관 관계자 분께 맡겨놨습니다.", null));
      lostPack.add(lostProperetySearchBox(
          "images/notice/cloth.jpg", "[옷] 츄리닝", "식당에서 츄리닝 옷이 있어요", null));
      lostPack.add(lostProperetySearchBox("images/notice/libstick.jpg",
          "[립스틱] 립스틱", "예체능관 정문에 떨어져 있어서 경비실에 맡겨놨어요!", null));
      lostPack.add(lostProperetySearchBox("images/notice/pencilcase.jpg",
          "[필통] 필통", "본관 801호 에서 필통이 발견되서 과사에 맡겨놨어요", null));
      lostPack.add(lostProperetySearchBox("images/notice/powerbank.jpg",
          "[배터리] 배터리", "예체능관 정문에 떨어져 있어서 경비실에 맡겨놨어요!", null));
      lostPack.add(lostProperetySearchBox("images/notice/ring.jpg", "[반지] 반지",
          "독서실에서 인형이 있어서 도서관 관계자 분께 맡겨놨어요!", null));
      lostPack.add(lostProperetySearchBox("images/notice/suncushion.jpg",
          "[화장품] 선쿠션", "본관 4층 화장실에서 선쿠션이 있어서 4층 사무실에 맡겨놨어요", null));
      lostPack.add(lostProperetySearchBox("images/notice/tomato.jpg",
          "[토마토] 토마토", "잘 익은 토마토가 정문앞에 있어서 제가 먹었어요", null));
      startFlag = false;
      first_lostPack = backup_lostPack = List.from(lostPack);
    }

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
                        tab2(context),
                        tab3(context),
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
                fontWeight: FontWeight.bold,
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
                fontWeight: FontWeight.bold,
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
                  PrimaryColor,
                  context),
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
                  PrimaryColor,
                  context),
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
