import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gquiz/constants.dart';
import 'package:gquiz/screens/quiz/quiz_screen.dart';
//import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Container(
          color: Colors.white,
        ),
          SafeArea(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2,),
                Text("Let's Play quiz",
                style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text("Here We Go",style: TextStyle(color: Colors.black,fontSize: 20),),
                Spacer(),
                TextField(
                  style: TextStyle(
                    color: Colors.white
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF1C2341),
                    hintText: 'Enter Your Name',
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () => Get.to(quizscreen()),
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(kDefaultPadding * 0.75),
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.all(Radius.circular(12))
                    ),
                    child: Text('Start Quiz',style: Theme.of(context)
                        .textTheme.button?.copyWith(color: Colors.black87)),
                  ),
                ),
                Spacer(flex: 2,),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
