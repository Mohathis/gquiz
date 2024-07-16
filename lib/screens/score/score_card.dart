import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gquiz/constants.dart';
import 'package:gquiz/controllers/question_controller.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Colors.teal,
          ),
          Column(
            children: [
              Spacer(flex: 3,),
              Text("Score",style: Theme.of(context)
                .textTheme
                .headline2
                ?.copyWith(color: kBlackColor),
                ),
              Spacer(),
              Text("${_qnController.num0CorrectAns * 1}/${_qnController.questions.length * 1}",
                style: Theme.of(context)
                  .textTheme
                  .headline3
                  ?.copyWith(color: kBlackColor),
              ),
              Spacer(flex: 2,),





            ],
          )
        ],
      ),
    );
  }
}
