import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'lecture.dart';
import 'assignment.dart';



class HomeScreen2 extends StatefulWidget{
  Lecture now;
  HomeScreen2(this.now);
  @override
  _HomeScreen2State createState() => _HomeScreen2State(this.now);
}


class _HomeScreen2State extends State<HomeScreen2>{
  Lecture now;
  _HomeScreen2State(this.now);
  List _data = [];

  _fetchData(){

    http.post(Uri.parse('http://ec2-15-164-95-61.ap-northeast-2.compute.amazonaws.com:4000/assignments'),
        headers: {
          'Content-type':'application/json',
        },
        body: jsonEncode({'id':'201663035', 'pw':'Wjdtls753!','classId':'20211AA10660130800200'})

    ).then((response) {
      String jsonString = response.body;

      if (response.statusCode == 200){
        String jsonString = response.body;
        print(jsonString);

        List classes = jsonDecode(jsonString);

        for (int i=0; i<classes.length;i++){
          var classroom = classes[i];
          Assignment classToAdd = Assignment(classroom["index"], classroom["assignmentName"], classroom["startDate"], classroom["endDate"], classroom["submission"]);

          setState(() {
            _data.add(classToAdd);
          });
        }
      }
      else{
        print("Error!!");
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('${this.now.className}', style: TextStyle(fontWeight: FontWeight.bold),),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color(0xff304f94),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh), onPressed: (){
            _fetchData();
          }),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          itemCount:_data.length,
          itemBuilder: (context, index){

            Assignment classroom = _data[index];
            return InkWell(
              onTap: (){
                print('test : ${classroom.assignmentName}');
              },
              child: Card(child:ListTile(
                      title: Text("${classroom.assignmentName}",style: TextStyle(color: Color(0xff304f94),fontSize: 17, fontWeight: FontWeight.bold)),
                      subtitle: Text("${classroom.startDate} ~ ${classroom.endDate}", style: TextStyle(fontSize: 13, color: Colors.grey[700]),),
                      trailing: Text("${classroom.submission}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                  ),
              elevation: 2.0,
              ),
            );
          }),
    );
  }
}