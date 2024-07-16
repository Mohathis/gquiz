import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gquiz/controllers/question_controller.dart';
import 'package:gquiz/screens/quiz/components/body.dart';
//import 'package:websafe_svg/websafe_svg.dart';

class quizscreen extends StatelessWidget {
  const quizscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          ElevatedButton(onPressed: _controller.nextQuestion, child: Text('Skip',style: TextStyle(color: Colors.teal),))
        ],
      ),
      body: Body(),
    );
  }
}
