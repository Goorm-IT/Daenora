import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


void main(){
  runApp(MaterialApp(
    home:HomeScreen2(),
  ));
}
class HomeScreen2 extends StatefulWidget{
  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}


class Class{
  String class_name;
  String prof_name;
  String class_code;

  Class(this.class_name, this.prof_name, this.class_code);

}
class _HomeScreen2State extends State<HomeScreen2>{

  List _data = [];

  _fetchData(){


    http.get(Uri.parse('http://ec2-13-125-126-215.ap-northeast-2.compute.amazonaws.com:4000/class')).then((response) {
      String jsonString = response.body;

      if (response.statusCode == 200){
        String jsonString = response.body;
        print(jsonString);

        List classes = jsonDecode(jsonString);

        for (int i=0; i<classes.length;i++){
          var classroom = classes[i];
          Class classToAdd = Class(classroom["class_name"], classroom["prof_name"], classroom["class_code"]);
          print(classToAdd.class_name);

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
        title: Text('Classromm2~'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh), onPressed: (){
            _fetchData();
          }),
        ],
      ),
      body: ListView.builder(
          itemCount:_data.length,
          itemBuilder: (context, index){

            Class classroom = _data[index];
            return GestureDetector(
              onTap: (){
                print('test : ${classroom.class_code}');
              },
              child: Card(
                  child: Column(
                    children: <Widget>[
                      Text("강의명 2: ${classroom.class_name}"),
                      Text("교수명 2: ${classroom.prof_name}"),
                    ],
                  )),
            );
          }),
    );
  }
}