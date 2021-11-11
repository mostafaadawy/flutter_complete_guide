import 'package:flutter/material.dart';
void main ()=>runApp(MyApp());

class MyApp extends StatefulWidget{
@override
State<StatefulWidget>createState(){
  return MyAppState();
}
}
class MyAppState extends State<MyApp>{
  var questionIndex = 0;
  void answerQuestion(){
    setState(() {
      questionIndex++;
    });
    print('Outside function call');
    
    print(questionIndex);
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
        Text(questions[questionIndex]),
        RaisedButton(
          child: Text('Answer 1'), 
          onPressed: answerQuestion,
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