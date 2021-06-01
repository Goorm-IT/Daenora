import 'package:flutter/material.dart';

class screenA extends StatelessWidget {
  const screenA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('back!'),
        ),
      ),
    );
  }
}
