import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'lecture.dart';



class HomeScreen2 extends StatefulWidget{
  Lecture now;
  HomeScreen2(this.now);
  @override
  _HomeScreen2State createState() => _HomeScreen2State(this.now);
}

//
// class Lecture{
//   String class_name;
//   String prof_name;
//   String class_code;
//
//   Lecture(this.class_name, this.prof_name, this.class_code);
//
// }

class _HomeScreen2State extends State<HomeScreen2>{
  Lecture now;
  _HomeScreen2State(this.now);
  List _data = [];

  _fetchData(){

    http.get(Uri.parse('http://ec2-15-164-95-61.ap-northeast-2.compute.amazonaws.com:4000/classes')).then((response) {
      String jsonString = response.body;

      if (response.statusCode == 200){
        String jsonString = response.body;
        print(jsonString);

        List classes = jsonDecode(jsonString);

        for (int i=0; i<classes.length;i++){
          var classroom = classes[i];
          Lecture classToAdd = Lecture(classroom["className"], classroom["profName"], classroom["class_Id"]);
          print(classToAdd.className);

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
          itemCount:_data.length,
          itemBuilder: (context, index){

            Lecture classroom = _data[index];
            return GestureDetector(
              onTap: (){
                print('test : ${classroom.classId}');
              },
              child: Card(
                  child: Column(
                    children: <Widget>[
                      Text("강의명 2: ${classroom.className}"),
                      Text("교수명 2: ${classroom.profName}"),
                    ],
                  )),
            );
          }),
    );
  }
}