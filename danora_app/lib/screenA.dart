import 'package:danora_app/screenB.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:danora_app/lecture.dart';

class HomeScreen extends StatefulWidget{
  List classes;
  HomeScreen(this.classes);
  @override
  _HomeScreenState createState() => _HomeScreenState(this.classes);
}

class _HomeScreenState extends State<HomeScreen>{

  List _data;
  _HomeScreenState(this._data);

  _fetchData(){


    http.post(
      Uri.parse('http://ec2-15-164-95-61.ap-northeast-2.compute.amazonaws.com:4000/classes'),
      headers: {
        'Content-type': 'application/json',
      },
      body: jsonEncode({'id':'201663025'})
    ).then((response) {
      String jsonString = response.body;

      if (response.statusCode == 200){
        String jsonString = response.body;
        print(jsonString);

        List classes = jsonDecode(jsonString);

        for (int i=0; i<classes.length;i++){
          var classroom = classes[i];
          Lecture classToAdd = Lecture(classroom["className"], classroom["profName"], classroom["classId"]);
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
        title: Text('Classroom~'),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2(classroom)));
              },
              child: Card(
                  child: Column(
                    children: <Widget>[
                      Text("강의명: ${classroom.className}"),
                      Text("교수명: ${classroom.profName}"),
                    ],
                  )),
            );
          }),
    );
  }
}