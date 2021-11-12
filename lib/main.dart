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
   final questions = const[
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
  var _questionIndex = 0;
  void _answerQuestion(){
    if(_questionIndex < questions.length){
      print('we still have questions');
      setState(() {
        _questionIndex++;
        });
    }else{
      print('No more questions');
    }
    
    print('Outside function call');
    
    print(_questionIndex);
  }
  @override
  Widget build(BuildContext context) {
    //var dummy=['hi'];
    //var dummy= const ['hi'];
    //dummy.add('add'); with constant value
    //const dummy= const ['hi'];
    //dummy=['changed'];
    //print(dummy);
    // const obj = const value means the pointer and its value const no change or addition to the value is available
    // while var pointer and const value allow only overwritten to the value no modificatio
   
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),

      body: _questionIndex < questions.length? Column(children: [
        Question(questions[_questionIndex]['questionText'] as String),
        ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(_answerQuestion,answer);
        }).toList(),
      ],) : Center(child: Text('No more questions')),
    ),);
 
  }
}