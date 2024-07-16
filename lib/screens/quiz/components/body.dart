import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gquiz/constants.dart';
import 'package:gquiz/controllers/question_controller.dart';
import 'package:gquiz/models/questions.dart';
import 'package:gquiz/screens/quiz/components/progress_bar.dart';
import 'package:gquiz/screens/quiz/components/question_card.dart';
//import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        Container(
          color: Colors.teal,
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                    () => Text.rich(
                        TextSpan(
                            text: "Question ${_questionController.questionNumber.value}",
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                ?.copyWith(color: Colors.white),
                            children: [
                              TextSpan(
                                text: "/${_questionController.questions.length}",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(color: Colors.white),
                              )
                            ]
                        )),
                ),
              ),
              Divider(thickness: 1.5,),
              SizedBox(height: kDefaultPadding,),
              Expanded(
                  child: PageView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _questionController.pageController,
                    onPageChanged: _questionController.updateTheQnNum,
                    itemCount: _questionController.questions.length,
                    itemBuilder: (context, index) => QuestionCard(
                      question: _questionController.questions[index],),
                  ),),
            ],
          ),
        )
      ],
    );
  }
}



