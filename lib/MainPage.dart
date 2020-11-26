import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';
import 'package:everything_jeon/ScrollingText.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String hak = "2020581015";
    String barcode = hak + "30";

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      //------------ 여기서부터 body ------------------------
      backgroundColor: Color.fromRGBO(223, 230, 243, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            //명지전문대학 로고 div
            margin: const EdgeInsets.only(
                left: 12.0, top: 90.0, right: 0.0, bottom: 0.0),
            width: 225,
            height: 50,
            child: Image.asset(
              'images/mjcname.png', //명지전문대학로고 이미지
            ),
          ),
          Container(
            //로고,인증 뺀 큰 div
            width: 400.0,
            height: 430.0,
            margin: const EdgeInsets.only(
                left: 20.0, top: 7.0, right: 18.0, bottom: 5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border:
                  Border.all(color: Color.fromRGBO(214, 226, 233, 1), width: 3),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(6, 32, 72, 0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ],
              color: Colors.white, //background color
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      //사진 div
                      margin: const EdgeInsets.only(
                          left: 15.0, top: 15.0, right: 0.0, bottom: 0.0),
                      width: 150,
                      height: 200,
                      child: Image.asset(
                        'images/hj.png',
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(223, 230, 243, 1),
                              width: 1)),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          //모바일 학생증 div

                          margin: const EdgeInsets.only(
                              left: 0.0, top: 15.0, right: 0.0, bottom: 0.0),
                          width: 189,
                          height: 100,
                          child: Text(
                            "모바일 학생증",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Color.fromRGBO(12, 25, 57, 1)),
                          ),
                        ),
                        Container(
                          //사용자 정보 div
                          margin: const EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          padding: const EdgeInsets.only(
                              left: 17.0, top: 0.0, right: 0.0, bottom: 0.0),
                          width: 189,
                          height: 40,
                          child: Text("정혜진",
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Color.fromRGBO(12, 25, 57, 1))),
                        ),
                        Container(
                          //사용자 정보 div -> 임의로 넣어놓음
                          margin: const EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 0.0, right: 0.0, bottom: 0.0),
                          width: 189,
                          height: 15,
                          child: Text("생년월일 : 1997. 04. 29",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(12, 25, 57, 1))),
                        ),
                        Container(
                          //사용자 정보 div -> 임의로 넣어놓음
                          margin: const EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 0.0, right: 0.0, bottom: 0.0),
                          width: 189,
                          height: 15,
                          child: Text("학과 : 산업디자인 (예술건강학부)",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(12, 25, 57, 1))),
                        ),
                        Container(
                          //사용자 정보 div -> 임의로 넣어놓음
                          margin: const EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 0.0, right: 0.0, bottom: 0.0),
                          width: 189,
                          height: 15,
                          child: Text("학번 : " + hak,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(12, 25, 57, 1))),
                        ),
                        Container(
                          //사용자 정보 div -> 임의로 넣어놓음
                          margin: const EdgeInsets.only(
                              left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                          padding: const EdgeInsets.only(
                              left: 18.0, top: 0.0, right: 0.0, bottom: 0.0),
                          width: 189,
                          height: 15,
                          child: Text("학적상태 : 재학 (전공심화)",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(12, 25, 57, 1))),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  //도용방지선 div
                  margin: const EdgeInsets.only(
                      left: 0.0, top: 20.0, right: 0.0, bottom: 10.0),
                  padding: const EdgeInsets.only(
                      left: 0.0, top: 0.0, right: 0.0, bottom: 0.0),
                  width: 400,
                  height: 25,
                  child: ScrollingText(
                    textAlign: TextAlign.center,
                    text: "도용방지선이 움직이는 모바일 학생증만 사용이 유효합니다.  캡쳐본은 사용불가",
                    textStyle: TextStyle(
                        fontSize: 12.0, color: Color.fromRGBO(12, 25, 57, 1)),
                  ),
                  // child: Text(
                  //   "도용방지선이 움직이는 모바일 학생증만 사용이 유효합니다. 캡쳐본은 사용불가",
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //       fontSize: 9.5, color: Color.fromRGBO(12, 25, 57, 1)),
                  // ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(214, 226, 233, 3.6),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20.0, top: 30.0, right: 20.0, bottom: 0.0),
                  width: 400,
                  height: 90,
                  child: SfBarcodeGenerator(
                    value: '$barcode',
                    showValue: true,
                  ),
                ),
              ],
            ),
          ),
          Container(
            //인증 div
            margin: const EdgeInsets.only(
                left: 0.0, top: 6.0, right: 0.0, bottom: 0.0),
            padding: const EdgeInsets.only(
                left: 0.0, top: 3.0, right: 0.0, bottom: 0.0),
            width: 500,
            height: 30,

            child: Text(
              "위 학생이 명지전문대 학생임을 인증합니다.",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontSize: 12, color: Color.fromRGBO(12, 25, 57, 1)),
            ),
          ),
          Transform.translate(
            offset: Offset(100.7, 120.2),
            child: Container(
              width: 190.0,
              height: 90.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: Color.fromRGBO(223, 230, 243, 1),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(172.2, 34.8),
            child: Container(
              width: 70.0,
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
