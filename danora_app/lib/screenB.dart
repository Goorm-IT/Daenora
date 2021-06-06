import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'lecture.dart';
import 'assignment.dart';



class HomeScreen2 extends StatefulWidget{
  Lecture now;
  List assignments;
  HomeScreen2 (this.now, this.assignments);
  @override
  _HomeScreen2State createState() => _HomeScreen2State(this.now, this.assignments);
}


class _HomeScreen2State extends State<HomeScreen2>{
  Lecture now;
  List assignments;
  _HomeScreen2State(this.now, this.assignments);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('${this.now.className}', style: TextStyle(fontWeight: FontWeight.bold),),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color(0xff304f94),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh)),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          itemCount:assignments.length,
          itemBuilder: (context, index){

            Assignment classroom = assignments[index];
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