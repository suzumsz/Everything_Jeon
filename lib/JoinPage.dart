import 'package:everything_jeon/LoginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() => runApp(JoinPage());

class JoinPage extends StatefulWidget {
  @override
  _Sign_upState createState() => _Sign_upState();
}

class _Sign_upState extends State<JoinPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Column(
            children: <Widget>[
              Center(
                child: Text(
                  'Sign up',
                  style: TextStyle(
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontFamily: 'Nanum Barumpen',
                      //나눔 글꼴
                      fontStyle: FontStyle.normal),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    icon: Icon(Icons.account_circle),
                    labelText: "회원가입할 이메일을 입력해주세요",
                    border: OutlineInputBorder(),
                    hintText: 'E-mail'),
                validator: (String value) {
                  if (value.isEmpty) {
                    return "이메일을 입력해주세요";
                  }
                  return null;
                },
              ),
              /*Container(
                margin: const EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerRight,
                child: RaisedButton(
                  onPressed: () {
                    //클릭시 검증
                  },
                  child: Text(
                      '이메일 인증'
                  ),
                ),
              ),*/
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                obscureText: true, // 비밀번호를 적을때 안보이도록
                controller: _passwordController,
                decoration: InputDecoration(
                    icon: Icon(Icons.vpn_key),
                    labelText: "회원가입할 비밀번호를 입력해주세요",
                    border: OutlineInputBorder(),
                    hintText: 'password'),
                validator: (String value) {
                  if (value.isEmpty) {
                    return "비밀번호를 입력해주세요";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 16.0,
              ),
              TextFormField(
                obscureText: true, // 비밀번호를 적을때 안보이도록
                decoration: InputDecoration(
                    icon: Icon(Icons.vpn_key),
                    labelText: "비밀번호를 한번 더 입력해주세요",
                    border: OutlineInputBorder(),
                    hintText: 'password'),
                validator: (String value) {
                  if (value != _passwordController) {
                    return "비밀번호가 일치하지 않습니다.";
                  }
                  return null;
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerRight,
                child: RaisedButton(
                  onPressed: () {
                    _register();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text('회원가입'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //회원가입 하는 메소드
  void _register() async {
    final UserCredential result = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: _emailController.text, password: _passwordController.text);
    final FirebaseUser user = result.user;

    if (user == null) {
      final snacBar = SnackBar(
        content: Text("Please try again later"),
      );
      Scaffold.of(context).showSnackBar(snacBar);
    }
  }
}
