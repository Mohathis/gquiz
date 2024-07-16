import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gquiz/controllers/question_controller.dart';

import '../../../constants.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF101010),width: 3),
          borderRadius: BorderRadius.circular(50)
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {

          return Stack(
            children: [
              LayoutBuilder(
                  builder: (context, constraints) => Container(
                width: constraints.maxWidth * controller.animation.value,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(50),
                ),
              )),
              Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${(controller.animation.value * 30).round()}",style: TextStyle(color: Colors.white),),
                        Icon(Icons.access_time,color: Colors.white,)
                      ],
                    ),
                  ))
            ],
          );
        }
      ),
    );
  }
}
