import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
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
          Transform.translate(
            offset: Offset(52.0, 309.0),
            child: Container(
              width: 92.0,
              height: 92.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xffdfe6f3),
                border: Border.all(width: 5.0, color: const Color(0xff445379)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(161.0, 309.0),
            child: Container(
              width: 92.0,
              height: 92.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xffdfe6f3),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(270.0, 309.0),
            child: Container(
              width: 92.0,
              height: 92.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color(0xffdfe6f3),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(60.0, 345.0),
            child: Text(
              '스터디룸 예약',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff0c1939),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(175.0, 345.0),
            child: Text(
              '독서실 예약',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff0c1939),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(290.0, 345.0),
            child: Text(
              '도서 예약',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff0c1939),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(52.0, 431.0),
            child:
                // Adobe XD layer: '예약_장소' (group)
                SizedBox(
              width: 310.0,
              height: 128.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 310.0, 128.0),
                    size: Size(310.0, 128.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                            width: 3.0, color: const Color(0xffdfe6f3)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 10.0, 26.0, 26.0),
                    size: Size(310.0, 128.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xffdfe6f3),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(41.0, 15.0, 102.0, 16.0),
                    size: Size(310.0, 128.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '장소를 선택하세요.',
                      style: TextStyle(
                        fontFamily: 'DX유니고딕 20',
                        fontSize: 12,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(44.0, 52.0, 85.0, 16.0),
                    size: Size(310.0, 128.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '도서관 지하 1층',
                      style: TextStyle(
                        fontFamily: 'DX유니고딕 20',
                        fontSize: 12,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(186.0, 52.0, 73.0, 16.0),
                    size: Size(310.0, 128.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '본관 카페 1층',
                      style: TextStyle(
                        fontFamily: 'DX유니고딕 20',
                        fontSize: 12,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(41.0, 75.0, 91.0, 34.0),
                    size: Size(310.0, 128.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 91.0, 34.0),
                          size: Size(91.0, 34.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffe3e5e9),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.0, 7.0, 8.0, 16.0),
                          size: Size(91.0, 34.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'A',
                            style: TextStyle(
                              fontFamily: 'DX유니고딕 20',
                              fontSize: 12,
                              color: const Color(0xff6d6d6d),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(42.0, 7.0, 7.0, 16.0),
                          size: Size(91.0, 34.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'B',
                            style: TextStyle(
                              fontFamily: 'DX유니고딕 20',
                              fontSize: 12,
                              color: const Color(0xff6d6d6d),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(72.0, 7.0, 7.0, 16.0),
                          size: Size(91.0, 34.0),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'C',
                            style: TextStyle(
                              fontFamily: 'DX유니고딕 20',
                              fontSize: 12,
                              color: const Color(0xff6d6d6d),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(177.0, 75.0, 91.0, 34.0),
                    size: Size(310.0, 128.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 91.0, 34.0),
                          size: Size(91.0, 34.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffe3e5e9),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(12.0, 7.0, 8.0, 16.0),
                          size: Size(91.0, 34.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'A',
                            style: TextStyle(
                              fontFamily: 'DX유니고딕 20',
                              fontSize: 12,
                              color: const Color(0xff6d6d6d),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(42.0, 7.0, 7.0, 16.0),
                          size: Size(91.0, 34.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'B',
                            style: TextStyle(
                              fontFamily: 'DX유니고딕 20',
                              fontSize: 12,
                              color: const Color(0xff6d6d6d),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(72.0, 7.0, 7.0, 16.0),
                          size: Size(91.0, 34.0),
                          pinRight: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'C',
                            style: TextStyle(
                              fontFamily: 'DX유니고딕 20',
                              fontSize: 12,
                              color: const Color(0xff6d6d6d),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.5, 13.5, 6.0, 16.0),
                    size: Size(310.0, 128.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontFamily: 'DX유니고딕 20',
                        fontSize: 12,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(52.0, 576.0),
            child: Container(
              width: 310.0,
              height: 128.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(width: 3.0, color: const Color(0xffdfe6f3)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(62.0, 586.0),
            child: Container(
              width: 26.0,
              height: 26.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffdfe6f3),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(93.0, 591.0),
            child: Text(
              '날짜와 시간을 선택하세요.',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(135.0, 644.0),
            child: Text(
              '10. 25',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(242.0, 644.0),
            child: Text(
              '14:00 - 15:00',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(71.5, 589.5),
            child: Text(
              '2',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(295.0, 722.0),
            child: Container(
              width: 67.0,
              height: 35.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: const Color(0xffdfe6f3),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(317.0, 730.0),
            child: Text(
              '완료',
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
          Transform.translate(
            offset: Offset(93.0, 639.0),
            child: Container(
              width: 31.0,
              height: 31.0,
              decoration: BoxDecoration(
                color: const Color(0xffe3e5e9),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(199.0, 639.0),
            child: Container(
              width: 31.0,
              height: 31.0,
              decoration: BoxDecoration(
                color: const Color(0xffe3e5e9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
