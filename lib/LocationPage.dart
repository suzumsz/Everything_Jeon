import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Background' (shape)
          Container(
            width: 414.0,
            height: 174.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25.0),
                bottomLeft: Radius.circular(25.0),
              ),
              color: const Color(0xffdfe6f3),
            ),
          ),
          Transform.translate(
            offset: Offset(27.0, 56.0),
            child: Text(
              '위치',
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
            offset: Offset(27.0, 112.0),
            child:
                // Adobe XD layer: 'Rectangle' (shape)
                Container(
              width: 168.0,
              height: 38.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(220.0, 112.0),
            child:
                // Adobe XD layer: 'Rectangle' (shape)
                Container(
              width: 168.0,
              height: 38.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(43.0, 121.0),
            child:
                // Adobe XD layer: 'Svyatoslav Taushev' (text)
                Text(
              '검색어를 입력하세요.',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff0c1939),
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(236.0, 121.0),
            child:
                // Adobe XD layer: 'Svyatoslav Taushev' (text)
                Text(
              '검색어를 입력하세요.',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 12,
                color: const Color(0xff0c1939),
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(162.9, 119.6),
            child: Transform.rotate(
              angle: -0.1571,
              child: SizedBox(
                width: 20.0,
                height: 21.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(2.9, 2.9, 14.2, 14.2),
                      size: Size(20.0, 20.9),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Transform.rotate(
                        angle: 0.8901,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffffffff),
                            border: Border.all(
                                width: 1.5, color: const Color(0xff0a1736)),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(14.7, 15.1, 4.7, 5.8),
                      size: Size(20.0, 20.9),
                      pinRight: true,
                      pinBottom: true,
                      fixedWidth: true,
                      fixedHeight: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(355.9, 119.6),
            child: Transform.rotate(
              angle: -0.1571,
              child: SizedBox(
                width: 20.0,
                height: 21.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(2.9, 2.9, 14.2, 14.2),
                      size: Size(20.0, 20.9),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Transform.rotate(
                        angle: 0.8901,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xffffffff),
                            border: Border.all(
                                width: 1.5, color: const Color(0xff0a1736)),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(14.7, 15.1, 4.7, 5.8),
                      size: Size(20.0, 20.9),
                      pinRight: true,
                      pinBottom: true,
                      fixedWidth: true,
                      fixedHeight: true,
                    ),
                  ],
                ),
              ),
            ),
          ),

          Transform.translate(
            offset: Offset(27.0, 200.0),
            child: Text(
              '학교 지도',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 20,
                color: const Color(0xff0c1939),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(37.0, 258.0),
            child:
                // Adobe XD layer: '학교지도일러스트 네이비' (shape)
                Container(
              width: 341.0,
              height: 430.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/mapimage.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(27.0, 241.0),
            child: Container(
              width: 361.0,
              height: 463.0,
              decoration: BoxDecoration(
                border: Border.all(width: 6.0, color: const Color(0xffdfe6f3)),
              ),
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
