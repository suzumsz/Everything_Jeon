import 'package:everything_jeon/NoticePage.dart';
import 'package:flutter/material.dart';
import 'NoticePage.dart';

// ignore: camel_case_types
class XDinfo_list extends StatelessWidget {
  XDinfo_list({
    Key key,
  }) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: [
          /* 박스 */
          Container(
              margin: EdgeInsets.only(left: 27, top: 182),
              padding: EdgeInsets.only(left: 5, top: 155),
              width: 361.0,
              height: 573.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(width: 3.0, color: const Color(0xffdfe6f3)),
              ),
              child: ListView(
                children: [
                  Container(
                    child: Column(
                      children: [
                        lostProperetyBox(
                            "", "[체크카드] 정XX님 국민카드", "예체능관 어져 있어서요."),
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
                        lostProperetyBox(
                            "", "[체크카드] 정XX님 국민카드", "예체능관 어져 있어서요."),
                      ],
                    ),
                  )
                ],
              )),

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
            offset: Offset(48.0, 306.0),
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
                  "btnEx3",
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
                  "btnEx4",
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
        ],
      ),
    );
  }
}
