import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:leadkart/helper/dimention.dart';
import 'package:leadkart/screens/onBoardingScreens/OnbordinPage.dart';

class On3 extends StatelessWidget {
  PageController pageController;
  On3({required this.pageController,super.key});

  //vars
  List sempleImage = [
    "assets/onBording2/dog3.png",
    "assets/onBording2/m3.png",
    "assets/onBording2/ai3.png",
    "assets/onBording2/ai3.png",
    "assets/onBording2/ai3.png",
    "assets/onBording2/ai3.png",
    "assets/onBording2/m3.png",
    "assets/onBording2/ai3.png",
    "assets/onBording2/m3.png",

  ];



  @override
  Widget build(BuildContext context) {
    return OnBordingPage(

        child: Center(
          child: SizedBox(
            height: SC.fromWidth(300),
            width: SC.fromWidth(300),
            child: Stack(
              children: [
                GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5
                  ),
                  shrinkWrap: true,
                  primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    for(var i in sempleImage)
                      Image.asset(i)
                  ],
                ),

                Container(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 4,sigmaX: 4),
                    child: SizedBox(),
                  ),
                ),

                Positioned(
                  top: SC.fromWidth(65),
                    left: SC.fromWidth(10),
                    right: SC.fromWidth(10),

                    child: Image.asset("assets/onBording2/mian3.png"))
              ],
            ),
          ),
        ),

        mainText: "AI generated Images",
        subTitle: "Our Generative AI auto-creates images for your ads.",
        pageController: pageController
    );
  }
}