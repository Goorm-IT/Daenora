import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
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
                        primaryColor: Color(0xff707070),
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
                                decoration: InputDecoration(
                                    labelText: "학번"
                                ),
                                keyboardType: TextInputType.text,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    labelText: "비밀번호"
                                ),
                                keyboardType: TextInputType.text,
                                obscureText: true,
                              ),
                              SizedBox(height: 40.0,),
                              ButtonTheme(
                                minWidth: 100.0,
                                height: 50.0,
                                child: RaisedButton(
                                  color: Color(0xff707070),
                                    child: Icon(
                                        Icons.login_sharp,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                    onPressed: (){}
                                ),
                              )
                            ]
                        )
                    ))
            )
          ],
        ),
      )
    );
  }
}

