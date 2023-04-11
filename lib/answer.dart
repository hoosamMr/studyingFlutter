// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
 // const Answer({Key key}) : super(key: key);
 final Function selectHandler;
 final String answerText;
 //final int ans;
 Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
        child: ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.lightBlue,
              ),
            onPressed: selectHandler,
              child: Text(answerText),
            ),
    );
  }
}