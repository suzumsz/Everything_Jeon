import 'package:everything_jeon/MainPage.dart';
import 'package:flutter/material.dart';
//import 'package:adobe_xd/pinned.dart';
import 'package:firebase_auth/firebase_auth.dart';

/*class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          /*SvgPicture.string(
            _svg_fe2t4n,
            allowDrawingOutsideViewBox: true,
          ),*/ //--->로고사진은 여기에 넣기
          Transform.translate(
            offset: Offset(183.0, 630.0),
            child:
                // Adobe XD layer: '로그인 버튼' (group)
                SizedBox(
              width: 49.0,
              height: 24.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 49.0, 24.0),
                    size: Size(49.0, 24.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        fontFamily: 'YDIYGO320',
                        fontSize: 18,
                        color: const Color(0xff09316d),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(130.0, 237.0),
            child:
                // Adobe XD layer: '로고base' (group)
                SizedBox(
              width: 154.0,
              height: 73.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 154.0, 73.0),
                    size: Size(154.0, 73.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: '로고5_1' (shape)
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(''),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(157.2, 320.3),
            child:
                // Adobe XD layer: 'Logo – Long' (group)
                SizedBox(
              width: 99.0,
              height: 27.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 99.0, 27.0),
                    size: Size(99.0, 27.0),
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Health UX Kit™' (text)
                        Text(
                      '에브리띵전',
                      style: TextStyle(
                        fontFamily: 'DX유니고딕 20',
                        fontSize: 20,
                        color: const Color(0xff205072),
                        letterSpacing: -0.29411766052246097,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(66.0, 491.0),
            child: Container(
              width: 282.0,
              height: 43.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                color: const Color(0xcc0b1837),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(66.0, 558.0),
            child: Container(
              width: 282.0,
              height: 43.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                color: const Color(0xcc0b1837),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(80.0, 499.0),
            child: Text(
              'ID',
              style: TextStyle(
                fontFamily: 'YDIYGO330',
                fontSize: 18,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(80.0, 566.0),
            child: Text(
              'PW',
              style: TextStyle(
                fontFamily: 'YDIYGO330',
                fontSize: 18,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(288.2, 612.3),
            child:
                // Adobe XD layer: 'Logo – Long' (group)
                SizedBox(
              width: 49.0,
              height: 13.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 49.0, 13.0),
                    size: Size(49.0, 13.0),
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'Health UX Kit™' (text)
                        Text(
                      '자동로그인',
                      style: TextStyle(
                        fontFamily: 'DX유니고딕 20',
                        fontSize: 10,
                        color: const Color(0xff205072),
                        letterSpacing: -0.14705883026123048,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(268.0, 612.0),
            child: Container(
              width: 17.0,
              height: 17.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xfff5f8fc),
                border: Border.all(width: 1.0, color: const Color(0xff205072)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(272.1, 616.3),
            /* child: SvgPicture.string(
              _svg_mmst4b,
              allowDrawingOutsideViewBox: true,
            ),*/
          ),
        ],
      ),
    );
  }
}*/

class Auth {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<User> handleSignInEmail(String email, String password) async {
    UserCredential result =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = result.user;

    assert(user != null);
    assert(await user.getIdToken() != null);

    final User currentUser = await auth.currentUser;
    assert(user.uid == currentUser.uid);

    print('signInEmail succeeded: $user');

    return user;
  }

  Future<User> handleSignUp(email, password) async {
    UserCredential result = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    final User user = result.user;

    assert(user != null);
    assert(await user.getIdToken() != null);

    return user;
  }
}

class LoginPage extends StatelessWidget {
  // This widget is the root of your application.//설정

  @override
  Widget build(BuildContext context) {
    String id, pw;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //이미지

              TextFormField(
                decoration: InputDecoration(labelText: 'ID'),
                validator: (value) =>
                    value.isEmpty ? 'Email can\'t be empty' : null, //입력없으면 널
                onChanged: (result) {
                  id = result;
                },
                //onSaved: (value) => _email = value,
              ),

              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'PW'),
                validator: (value) =>
                    value.isEmpty ? 'Password can\'t be empty' : null,
                onChanged: (result) {
                  pw = result;
                },
                //onSaved: (value) => _password = value,
              ),
              RaisedButton(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  onPressed: () {
                    print(id + '\n' + pw);
                    var authHandler = new Auth();
                    authHandler.handleSignInEmail(id, pw).then((User user) {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => MainPage()));
                    }).catchError((e) => print(e));
                  } //validateAndSave,

                  ),
            ],
          ),
        ),
      ),
    );
  }
}
