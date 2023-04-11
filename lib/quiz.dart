// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'Question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});
  //const Quiz({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex % questions.length]['questionText'],
        ),
        ...(questions[questionIndex % questions.length]['answers']
                as List<Map<String,Object>>)
            .map((answer) => Answer(()=>answerQuestion(answer['score']), answer['text']))
            .toList()
      ],
    );
  }
}
