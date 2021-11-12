import 'package:flutter/material.dart';
import 'Question.dart';
import 'answer.dart';
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
      {
        'questionText':'what\'s your favorite color?', 
        'answers':['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText':'what\'s your favorite animals?', 
        'answers':['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText':'who\'s your favorite instructor?', 
        'answers':['Max', 'Mos', 'Ahmed', 'Ali'],
      },
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),

      body: Column(children: [
        Question(questions[_questionIndex]['questionText']),
        ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(_answerQuestion,answer);
        }).toList(),
      ],),
    ),);
 
  }
}