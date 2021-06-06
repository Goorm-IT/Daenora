import 'dart:convert';

import 'package:danora_app/screenA.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:danora_app/lecture.dart';
import 'dart:async';


void main(){
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
                                          onPressed: () async
                                          {
                                            var res = await server.postReq(id.text, pw.text);

                                            if(res.length > 0){
                                              correctSnackBar(context);
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(res)));
                                            }else {
                                              incorrectSnackbar(context);
                                            }
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


class Server {
  Future<List> postReq(id, pw) async {
    var url = Uri.parse('http://ec2-15-164-95-61.ap-northeast-2.compute.amazonaws.com:4000/classes');
    print({'id':id, 'pw':pw});
    var response = await http.post(
      url,
      headers: {
        'Content-type': 'application/json',
      },
      body: jsonEncode({'id':id, 'pw':pw})
    );

    List json = jsonDecode(response.body);
    List classes = [];
    for (int i=0; i<json.length;i++) {
      var classroom = json[i];
      classes.add(Lecture(
          classroom["className"], classroom["profName"], classroom["classId"]));
    }
    return classes;
  }
}

Server server = Server();
