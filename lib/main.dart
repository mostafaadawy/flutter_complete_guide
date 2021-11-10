import 'package:flutter/material.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color?',
      'what\'s your favorite animal?',
      'what\'s your favorite color?',
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(children: [
        Text('The question!'),
        RaisedButton(
          child: Text('Answer 1'), 
          onPressed: null,
        ),
        RaisedButton(
          child: Text('Answer 2'), 
          onPressed: null,
        ),
        RaisedButton(
          child: Text('Answer 3'), 
          onPressed: null,
        ),
      ],),
    ),);
 
  }
}