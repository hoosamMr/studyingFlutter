import 'package:flutter/material.dart';
// import './Question.dart';
// import './answer.dart';
import 'quiz.dart';
import 'result.dart';
// void main() //   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
   final _questions = const[
      {
        'questionText': 'what\'s your favorite color?',
        'answers': [
          {'text': 'Black','score': 10},
          {'text': 'Red','score': 5},
          {'text': 'Green','score': 3},
          {'text': 'White','score': 1},

        ]
      },
      {
        'questionText': 'what\'s your favorite animal?',
         'answers': [
          {'text': 'Rabbit','score': 3},
          {'text': 'Snake','score': 11},
          {'text': 'Elephant','score': 5},
          {'text': 'Lion','score': 9},

        ]
      },
      {
        'questionText': 'what\'s your favorite instructure?',
         'answers': [
          {'text': 'Max','score': 1},
          {'text': 'Max','score': 1},
          {'text': 'Max','score': 1},
          {'text': 'Max','score': 1},

        ]
      }
      
      //'What\'s your favorite food?'
    ];
  var _quetsionIndex = 0;
  var _totalScore = 0;
  void _restartQuiz(){
    setState(() {
      _quetsionIndex=0;
      _totalScore=0;
    });
  }
  void _answerQuestions(int score) {
    _totalScore+=score;
    setState(() {
      _quetsionIndex = _quetsionIndex + 1;
    });

    
   
    print('question index $_quetsionIndex % questions.length ${_questions.length} = ${_quetsionIndex % _questions.length}');
    if(_quetsionIndex < _questions.length){
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: Scaffold( 
        appBar: AppBar(
          title: Text(
            'My First App',
          ),
        ),
        body: _quetsionIndex < _questions.length ? Quiz(answerQuestion:_answerQuestions,questionIndex: _quetsionIndex,
        questions:_questions,) : Result(_totalScore,_restartQuiz)
      ),
    );
  }
}
 