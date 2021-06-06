import 'screenB.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:page_transition/page_transition.dart';

import 'lecture.dart';
import 'assignment.dart';

class HomeScreen extends StatefulWidget{
  String id, pw;
  List classes;
  HomeScreen(this.id, this.pw, this.classes);
  @override
  _HomeScreenState createState() => _HomeScreenState(this.id, this.pw, this.classes);
}

class _HomeScreenState extends State<HomeScreen>{
  String id, pw;
  List classes;
  _HomeScreenState(this.id, this.pw, this.classes);

  Future<List> postReq(id, pw, classId) async {
    var url = Uri.parse(
        'http://ec2-15-164-95-61.ap-northeast-2.compute.amazonaws.com:4000/assignments');
    var response = await http.post(
        url,
        headers: {
          'Content-type':'application/json',
        },
        body: jsonEncode({'id':id, 'pw':pw, 'classId': classId})
    );

    List json = jsonDecode(response.body);
    List assigns = [];
    for (int i=0; i<json.length;i++) {
      var assign = json[i];
      assigns.add(Assignment(
          assign["index"], assign["assignmentName"], assign["startDate"], assign["endDate"], assign["submission"]));
    }
    return assigns;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('내 강의실',style: TextStyle( fontWeight: FontWeight.bold),),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color(0xff304f94),
        // actions: <Widget>[
        //   IconButton(icon: Icon(Icons.refresh), onPressed: (){
        //     _fetchData();
        //   }),
        //],
      ),
      body: ListView.builder(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          itemCount:classes.length,
          itemBuilder: (context, index){
            Lecture classroom = classes[index];

            // return ListTile(
            //   onTap: (){
            //       print('test : ${classroom.classId}');
            //       Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2(classroom)));
            //     },
            //
            //   title:  Text("강의명: ${classroom.className}"),
            //   subtitle: Text("교수명: ${classroom.profName}"),
            //   trailing: Icon(Icons.check_circle),
            // );
            return InkWell(
              onTap: (){
                print('test : ${classroom.classId}');
                //Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2(classroom, )));
              },
              child: Card(child:ListTile(
                  title:  Text("${classroom.className}",style: TextStyle(color:Color(0xff304f94) ,  fontSize: 17, fontWeight: FontWeight.bold),),
                  subtitle: Text("${classroom.profName}",style: TextStyle(fontSize: 13,color: Colors.grey[700])),
                  trailing: Icon(Icons.open_in_new,color:Color(0xff304f94) ,),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                onTap: () async {
                  var assigns = await this.postReq(this.id, this.pw, classroom.classId);
                    Navigator.push(context, PageTransition(
                        type: PageTransitionType.leftToRightWithFade,
                        child: HomeScreen2(classroom, assigns)
                    ));
                },
            ),
                elevation: 2.0,
            ));
          }),
    );
  }
}