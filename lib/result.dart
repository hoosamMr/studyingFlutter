// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key key}) : super(key: key);
  final int resultScore;
  final Function restartQuiz;
  Result(this.resultScore,this.restartQuiz);

  String get resultPhrase{
    String resultText;
    if(resultScore <= 8){
      resultText = 'You are awesome and innocent!';
    }else if(resultScore <= 12){
      resultText = 'Pretty likeable!';
    }else if(resultScore <= 16){
      resultText='You are...srtange?!';
    }else{
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        TextButton(style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all(Colors.red),), onPressed: restartQuiz, child: Text('Restart Quiz!',
        ),
        
        )
        ],
      ),
    );
  }
}
