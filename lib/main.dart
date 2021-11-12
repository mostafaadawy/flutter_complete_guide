import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';
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
        'answers':[
          {'text':'Black','score':10},
          {'text':'Red','score':5},
          {'text':'Green','score':3},
          {'text':'White','score':1},],
      },
      {
        'questionText':'what\'s your favorite animals?', 
         'answers':[
          {'text':'Rabbit','score':10},
          {'text':'Snake','score':5},
          {'text':'Elephant','score':3},
          {'text':'Lion','score':1},],
      },
      {
        'questionText':'who\'s your favorite instructor?', 
         'answers':[
          {'text':'Max','score':10},
          {'text':'Mos','score':5},
          {'text':'Dos','score':3},
          {'text':'Sos','score':1},],
      },
    ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score){
    _totalScore +=score;
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

      body: _questionIndex < questions.length? Quiz(
        answerQuestion: _answerQuestion,
        questionIndex: _questionIndex,
        questions: questions,
      )
      :
       Result(_totalScore),
    ),);
 
  }
}