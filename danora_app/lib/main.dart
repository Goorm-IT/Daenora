import 'dart:convert';

import 'screenA.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:page_transition/page_transition.dart';

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

  ProgressDialog pr;

  void show() async{
    pr.show();
    Future.delayed(Duration(seconds: 2),).then((value){
      pr.hide();
     
    });
  }
  @override
  Widget build(BuildContext context) {
    pr = ProgressDialog(context, type: ProgressDialogType.Normal, isDismissible: true, showLogs: true );
    return Scaffold(
      body: Builder(
          builder: (context) {
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 80,bottom: 80)),
                  Center(
                    child: Image(
                      image: AssetImage('images/logo1.png'),
                      width: 400.0,
                      height: 200.0,

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
                                        labelText: "ID",
                                        hintText: 'ex) 20211234',
                                        border: OutlineInputBorder(),
                                        prefixIcon: Icon(Icons.perm_identity),
                                      ),
                                      keyboardType: TextInputType.text,
                                    ),
                                    SizedBox(height: 20.0,),
                                    TextField(
                                      controller: pw,
                                      decoration: InputDecoration(
                                        labelText: "PW",
                                        border: OutlineInputBorder(),
                                          prefixIcon: Icon(Icons.password_sharp)
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
                                              fontFamily: "Jalnan"

                                            ),

                                          ),
                                          onPressed: () async
                                          {
                                            //show();
                                            var res = await server.postReq(id.text, pw.text);
                                            print(int.parse(res) == 200);
                                            if(res == '200'){
                                              correctSnackBar(context);
                                              await Future.delayed(const Duration(seconds: 1)).then((value) => Navigator.push(context, PageTransition(
                                                  type: PageTransitionType.leftToRightWithFade,
                                                  child: HomeScreen()
                                              )));
                                              // Navigator.push(context, PageTransition(
                                              //   type: PageTransitionType.leftToRightWithFade,
                                              //   child: HomeScreen()
                                              // ));
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
  Future<String> postReq(id, pw) async {
    var url = Uri.parse(
        'http://ec2-15-164-95-61.ap-northeast-2.compute.amazonaws.com:4000/login');
    var response = await http.post(
      url,
      headers: {
        'Content-type':'application/json',
      },
      body: jsonEncode({'id':id, 'pw':pw})
    );
    // http.Response response = await http.post(url,
    //   body: jsonEncode({
    //     'id': id.toString(),
    //     'pw': pw.toString()
    //   })
    // );
    print(response.body);
    return response.body;
  }
}

Server server = Server();


