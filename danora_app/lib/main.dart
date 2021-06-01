import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}


class _LogInState extends State<LogIn> {

  TextEditingController id = TextEditingController();
  TextEditingController pw = TextEditingController();

  Future login() async {
    print('login start');
    var res = await http.post(
        Uri.parse('http://ec2-52-78-97-124.ap-northeast-2.compute.amazonaws.com:5000'),
        body: jsonEncode({'id':'201663035', 'pw':'Wjdtls753!'})
    );
    print(res.body);
    return res.body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
          builder: (context) {
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(
                    child: Image(
                      image: AssetImage(''),
                      width: 170.0,
                      height: 190.0,
                    ),
                  ),
                  Form(
                      child: Theme(
                          data: ThemeData(
                              primaryColor: Color(0xff304f94),
                              inputDecorationTheme: InputDecorationTheme(
                                  labelStyle: TextStyle(
                                    color: Color(0xff707070),
                                    fontSize: 15.0,
                                  )
                              )
                          ),
                          child: Container(
                              padding: EdgeInsets.all(100.0),
                              child: Column(
                                  children: <Widget>[
                                    TextField(
                                      controller: id,
                                      decoration: InputDecoration(
                                        labelText: "학번",
                                        hintText: 'ex)201663035',
                                        border: OutlineInputBorder(),
                                      ),
                                      keyboardType: TextInputType.text,
                                    ),
                                    SizedBox(height: 20.0,),
                                    TextField(
                                      controller: pw,
                                      decoration: InputDecoration(
                                        labelText: "비밀번호",
                                        border: OutlineInputBorder(),
                                      ),
                                      keyboardType: TextInputType.text,
                                      obscureText: true,
                                    ),
                                    SizedBox(height: 40.0,),
                                    ButtonTheme(
                                      minWidth: 100.0,
                                      height: 50.0,
                                      child: RaisedButton(
                                          color: Color(0xff304f94),
                                          child: new Text(
                                            '로그인',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                          onPressed: ()
                                          {
                                            login();
                                            // if(){
                                            //   correctSnackBar(context)
                                            // }else if(){
                                            //   incorrectSnackbar(context)
                                            // }
                                          }
                                      ),
                                    )
                                  ]
                              )
                          ))
                  )
                ],
              ),
            );
          }
      ),
    );
  }
}


void incorrectSnackbar(BuildContext context){

  Scaffold.of(context).showSnackBar(
      SnackBar(content:
      Text('로그인 정보를 다시 확인해보세요',
        textAlign: TextAlign.center,),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      )
  );
}

void correctSnackBar(BuildContext context){
  Scaffold.of(context).showSnackBar(
      SnackBar(content: Text('로그인 완료',
        textAlign: TextAlign.center,),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );
}