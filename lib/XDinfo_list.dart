import 'package:flutter/material.dart';

// ignore: camel_case_types
class XDinfo_list extends StatelessWidget {
  XDinfo_list({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(48.0, 351.0),
            child: Container(
              width: 132.0,
              height: 84.0,
              decoration: BoxDecoration(
                color: const Color(0xffdfe6f3),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(48.0, 451.0),
            child: Container(
              width: 132.0,
              height: 84.0,
              decoration: BoxDecoration(
                color: const Color(0xffdfe6f3),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(48.0, 551.0),
            child: Container(
              width: 132.0,
              height: 84.0,
              decoration: BoxDecoration(
                color: const Color(0xffdfe6f3),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(48.0, 651.0),
            child: Container(
              width: 132.0,
              height: 84.0,
              decoration: BoxDecoration(
                color: const Color(0xffdfe6f3),
              ),
            ),
          ),
          // Adobe XD layer: 'Background' (shape)
          Container(
            width: 415.0,
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
            offset: Offset(27.0, 182.0),
            child: Container(
              width: 361.0,
              height: 573.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(width: 3.0, color: const Color(0xffdfe6f3)),
              ),
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
          Transform.translate(
            offset: Offset(189.0, 348.0),
            child: Text(
              '[체크카드] 정XX님 국민카드\n\n예체능관 정문에 떨어져 있어서\n경비실에 맡겨놨어요!정X님꺼에요.',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(189.0, 449.0),
            child: Text(
              '[에어팟 케이스] 갈색 곰돌이 모양\n\n사교관 하나은행 2번 창구에 있어\n서 직원분께 맡겨놨습니다~',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(189.0, 550.0),
            child: Text(
              '[필통] 노란색 스폰지밥 필통\n\n공학관 지하1층 예배실에서 발견\n했어요~ 그 자리에 그대로 뒀습니\n다.',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(189.0, 656.0),
            child: Text(
              '[프린트] A4용지 프린트\n인프에서 발견했습니다.\n직원분께 맡겨놨어요. \n',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
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
            offset: Offset(274.0, 207.0),
            /*child: SvgPicture.string(
              _svg_ecau1l,
              allowDrawingOutsideViewBox: true,
            ),*/ //-----> 분실물신고 싸고있는 버튼 넣음 돼
          ),
          Transform.translate(
            offset: Offset(274.0, 255.0),
            child: Container(
              width: 84.0,
              height: 30.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: const Color(0xffdfe6f3),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(284.0, 212.0),
            child: Text(
              '분실물 신고',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(284.0, 260.0),
            child: Text(
              '분실물 검색',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
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
