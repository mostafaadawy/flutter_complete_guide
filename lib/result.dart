import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultScore;
  final Function restHandler;
  Result(this.resultScore, this.restHandler);
  String get resultPhrase{
    var rsultText ='You did it';
    if(resultScore<=8){
      rsultText='you are awesome and innocent';
    } else if(resultScore<=12){
      rsultText='you are pretty likable';
    }else if(resultScore<=16){
      rsultText='you are ... strange';
    }else{
      rsultText='you are too bad';
    }
    return rsultText;
  }
   @override
  Widget build(BuildContext context) {
    return 
      Center(
        child :Column(children:[
          Text(
          resultPhrase,
           style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
           textAlign: TextAlign.center,
           ),
           FlatButton(
              child: Text(
               'Restart Quiz',
               ),
               textColor: Colors.blue,
              onPressed: restHandler,
           )
        ]),
        
      );
    
  }
}