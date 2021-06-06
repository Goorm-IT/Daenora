import 'screenB.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'lecture.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  List _data = [];

  _fetchData(){


    http.post(Uri.parse('http://ec2-15-164-95-61.ap-northeast-2.compute.amazonaws.com:4000/classes'),
        headers: {
          'Content-type':'application/json',
        },

        body: jsonEncode({'id':'201663035', 'pw':'Wjdtls753!'})

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
        title: Text('내 강의실',style: TextStyle( fontWeight: FontWeight.bold),),
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
            Lecture classroom = _data[index];

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
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2(classroom)));
              },
              child: Card(child:ListTile(
                  title:  Text("강의명 : ${classroom.className}",style: TextStyle(color:Color(0xff304f94) ,  fontSize: 17, fontWeight: FontWeight.bold),),
                  subtitle: Text("교수명 : ${classroom.profName}",style: TextStyle(fontSize: 13,color: Colors.grey[700])),
                  trailing: Icon(Icons.open_in_new,color:Color(0xff304f94) ,),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

            ),
                elevation: 2.0,
            ));
          }),
    );
  }
}