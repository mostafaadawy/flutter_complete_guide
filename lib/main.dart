import 'package:flutter/material.dart';
void main ()=>runApp(MyApp());

class MyApp extends StatefulWidget{
@override
State<StatefulWidget>createState(){
  return _MyAppState();
}
}
class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;
  void _answerQuestion(){
    setState(() {
      _questionIndex++;
    });
    print('Outside function call');
    
    print(_questionIndex);
  }
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
        Text(questions[_questionIndex]),
        RaisedButton(
          child: Text('Answer 1'), 
          onPressed: _answerQuestion,
        ),
        RaisedButton(
          child: Text('Answer 2'), 
          onPressed: ()=>print('Anonoumous Function single line is called just in this place executed'),
        ),
        RaisedButton(
          child: Text('Answer 3'), 
          onPressed: (){
            //...
            print('Anonymous Function multiline exectuted only here');
          },
        ),
      ],),
    ),);
 
  }
}