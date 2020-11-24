import 'package:everything_jeon/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:circular_check_box/circular_check_box.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children: <Widget>[
          mainlogo(),
          mainlogo2(),
          _idInput(),
          _pwInput(),
          //    auto(),
          Container(
            margin: EdgeInsets.only(left: 90, top: 40),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
            ),
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
      margin: EdgeInsets.only(left: 66, top: 100),
      width: 282.0,
      height: 43.0,
      child: TextFormField(
        //textAlign: TextAlign.left,
        // style: TextStyle(color: const Color(0xffffffff)),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xcc0b1837),
          hintText: 'ID',
          hintStyle: TextStyle(
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
      margin: EdgeInsets.only(left: 66, top: 15),
      width: 282.0,
      height: 43.0,
      child: TextFormField(
        //textAlign: TextAlign.left,
        // style: TextStyle(color: const Color(0xffffffff)),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xcc0b1837),
          hintText: 'PW',
          hintStyle: TextStyle(
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
      //   ),
    );
    //);
  }

  Widget auto() {
    return // Transform.translate(
//            offset: Offset(288.2, 612.3),
        //offset: Offset(268.0, 520.0),
        // child:
        // Adobe XD layer: 'Logo – Long' (group)
        //       SizedBox(
        //   width: 49.0,
        // height: 13.0,
        //child:
        //   Stack(
        //  children: <Widget>[
        Container(
      margin: EdgeInsets.only(left: 268, top: 5),
      child: ListTile(
        leading: CircularCheckBox(
          value: false, //this.selected,
          checkColor: const Color(0xfff5f8fc),
          activeColor: Colors.green,

          //수정하기
          onChanged: (bool value) {
            value = !value;
          },
        ),
        //  inactiveColor: Colors.redAccent,
        //  disabledColor: Colors.grey,
        //onChanged: (val) => this.setState(() {
        //this.selected= !this.selected ;})

        title: Text(
          '자동로그인',
          style: TextStyle(
            fontFamily: 'DX유니고딕 20',
            fontSize: 10,
            color: const Color(0xff205072),
            letterSpacing: -0.14705883026123048,
          ),
          textAlign: TextAlign.left,
        ),
        //onTap: ()=> this.setState(() { this.selected= !this.selected ;}),

        //  ],
        //   ),
      ),
    );
  }

/*
  Widget login() {
    //  Transform.translate(
    //  offset: Offset(183.0, 600.0),
    // child:
    // Adobe XD layer: '로그인 버튼' (group)
    return Container(
      margin: EdgeInsets.only(left: 90, top: 40),
      width: 100.0,
      height: 24.0,
      child: Stack(
        children: <Widget>[
          FlatButton(
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainScreen()));
            },
          ),
        ],
      ),
    );
  }
*/
  Widget mainlogo() {
    //   Transform.translate(

    //  offset: Offset(130.0, 237.0),
    //  child:
    // Adobe XD layer: '로고base' (group)
    return Container(
      margin: EdgeInsets.only(left: 65, top: 237),
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
      margin: EdgeInsets.only(left: 73, top: 7.3),
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
      // ),
    );
  }
}

/*
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
*/

/*
class FirebaseAuthService with ChangeNotifier {
  FirebaseAuthService({auth}) : _auth = auth ?? FirebaseAuth.instance;

  FirebaseAuth _auth;

  Future<FirebaseUser> signInWithEmailAndPassword(
      {@required String email, @required String password}) async {
    final credential = EmailAuthProvider.getCredential(
      email: email,
      password: password,
    );
    final authResult = await _auth.signInWithCredential(credential);
    return authResult.user;
  }
}
class LoginPage extends StatelessWidget {
  // This widget is the root of your application.//설정

  LoginPage({Key key}) : super(key: key);
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Text('Login'),
        _buildEmailInput(),
        _buildPasswordInput(),
        _buildSubmitButton(),
      ],
    ));
  }

  Widget _buildEmailInput() {
    return TextFormField(
      maxLines: 1,
      keyboardType: TextInputType.emailAddress,
      autocorrect: false,
      decoration: InputDecoration(
        hintText: 'email',
      ),
      controller: _emailController,
      onSaved: (value) => _emailController.text = value.trim(),
    );
  }

  Widget _buildPasswordInput() {
    return TextFormField(
      style: TextStyle(fontFamily: ''),
      maxLines: 1,
      keyboardType: TextInputType.visiblePassword,
      autocorrect: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'password',
      ),
      controller: _passwordController,
      onSaved: (value) => _passwordController.text = value.trim(),
    );
  }

  Widget _buildSubmitButton() {
    return RaisedButton(
      onPressed: () => print('click :)'),
      child: Text('submit'),
    );
  }
}
/*
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
  }*/
*/
