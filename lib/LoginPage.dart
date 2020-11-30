import 'package:everything_jeon/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:firebase_auth/firebase_auth.dart';

bool _value = true;

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

class LoginPage extends StatefulWidget {
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  var authHandler = new Auth();
  final TextEditingController _emailtextController =
      new TextEditingController();
  final TextEditingController _pwtextController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: ListView(
        /*constraints: BoxConstraints(
            minHeight: 500.0, maxHeight: 800.0, minWidth: 100.0, maxWidth: 800),*/
        children: <Widget>[
          Column(
            children: <Widget>[
              mainlogo(),
              mainlogo2(),
              _idInput(),
              _pwInput(),
              InkWell(
                onTap: () {
                  setState(() {
                    _value = !_value;
                  });
                },
                child: Container(
                    margin: EdgeInsets.only(left: 260, top: 3),
                    child: _value
                        ? Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 5, top: 7),
                                width: 17.0,
                                height: 17.0,
                                child: Icon(
                                  Icons.check,
                                  size: 14.0,
                                  color: Colors.grey[400],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xfff5f8fc),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xff205072)),
                                ),
                              ),
                              Text(
                                '자동로그인',
                                style: TextStyle(
                                  fontFamily: 'DX유니고딕 20',
                                  fontSize: 11,
                                  color: const Color(0xff205072),
                                  letterSpacing: -0.14705883026123048,
                                  height: 1.9,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 5, top: 7),
                                width: 17.0,
                                height: 17.0,
                                child: Icon(
                                  Icons.check,
                                  size: 14.0,
                                  color: Color(0xff205072),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: Color.fromRGBO(155, 255, 161, 1),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xff205072)),
                                ),
                              ),
                              Text(
                                '자동로그인',
                                style: TextStyle(
                                  fontFamily: 'DX유니고딕 20',
                                  fontSize: 11,
                                  color: const Color(0xff205072),
                                  letterSpacing: -0.14705883026123048,
                                  height: 1.9,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          )),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                width: 100.0,
                height: 24.0,
                // child: Stack(
                //  children: <Widget>[
                child: FlatButton(
                  child: Pinned.fromSize(
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
                  onPressed: () {
                    authHandler
                        .handleSignInEmail(
                            _emailtextController.text, _pwtextController.text)
                        .then((User user) {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new MainScreen()));
                    }).catchError((e) => print(e));
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _idInput() {
    return //Transform.translate(
        // offset: Offset(66.0, 491.0),
        //child:

        Container(
      margin: EdgeInsets.only(top: 130),
      width: 282.0,
      height: 43.0,
      child: TextFormField(
        controller: _emailtextController,
        //textAlign: TextAlign.left,
        style: TextStyle(color: const Color(0xffffffff)),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xcc0b1837),
          hintText: 'ID',
          hintStyle: TextStyle(
            height: 2.7,
            fontFamily: 'YDIYGO330',
            fontSize: 18,
            color: const Color(0xffffffff),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22.0),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    );
  }

  Widget _pwInput() {
    return // Transform.translate(
        //  offset: Offset(66.0, 515.0),
        // child:
        Container(
      margin: EdgeInsets.only(top: 20),
      width: 282.0,
      height: 43.0,
      child: TextFormField(
        controller: _pwtextController,
        //textAlign: TextAlign.left,
        style: TextStyle(color: const Color(0xffffffff)),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xcc0b1837),
          hintText: 'PW',
          hintStyle: TextStyle(
            height: 2.7,
            fontFamily: 'YDIYGO330',
            fontSize: 18,
            color: const Color(0xffffffff),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(22.0),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
        obscureText: true,
      ),

      //   ),
    );
    //);
  }

  Widget mainlogo() {
    //   Transform.translate(

    //  offset: Offset(130.0, 237.0),
    //  child:
    // Adobe XD layer: '로고base' (group)
    return Container(
      margin: EdgeInsets.only(top: 190),

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
                  image: const AssetImage('images/etlogo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
      //   ),
    );
  }

  Widget mainlogo2() {
    //Transform.translate(
    // offset: Offset(157.2, 320.3),
    //child:
    // Adobe XD layer: 'Logo – Long' (group)
    return Container(
      margin: EdgeInsets.only(top: 7.3),
      width: 99.0,
      height: 27.0,
      child: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 0.0, 99.0, 27.0),
            size: Size(90.0, 27.0),
            fixedHeight: true,
            child:
                // Adobe XD layer: 'Health UX Kit™' (text)
                Text(
              '에브리띵전',
              style: TextStyle(
                fontFamily: 'DX유니고딕 20',
                fontSize: 22,
                color: const Color(0xff205072),
                letterSpacing: -0.29411766052246097,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
