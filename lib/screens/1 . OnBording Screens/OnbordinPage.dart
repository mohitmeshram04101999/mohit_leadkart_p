
import 'package:flutter/material.dart';
import 'package:leadkart/component/clips/onbording%20cliper.dart';
import 'package:leadkart/helper/dimention.dart';

import '../../helper/helper.dart';

class OnBordingPage extends StatelessWidget {
  PageController pageController;
  String mainText;
  String subTitle;
  Widget child;
  bool lastPage;
  OnBordingPage({
    this.lastPage = false,
    required this.child,
    required this.mainText,
    required this.subTitle,
    required this.pageController,
    super.key
  });

  @override
  Widget build(BuildContext context) {

    //Scaffold
    return Scaffold(
      body: Column(

        children: [

          //Min App bar

          ClipPath(
            clipper: OnbordingAppBarClip(),
            child: Container(
              width: double.infinity,
              height: SC.from_width(500),
              color: MyHelper.appConstent.OnbordingAppBar,
              child: child,
            ),
          ),
          SizedBox(height: SC.from_width(76),),


          //main text
          Text(mainText,style: MyHelper.textStyls.onBordingMainText,),
          SizedBox(height: SC.from_width(16),),

          //subtitle
          Padding(
            padding: MyHelper.appConstent.horizontalPedding,
            child: Text(subTitle,textAlign: TextAlign.center,style: MyHelper.textStyls.onBordingSubTitle,),
          ),
          Spacer(),

          Padding(
            padding: EdgeInsets.symmetric(vertical: SC.from_width(10)),
            child: Padding(
              padding:MyHelper.appConstent.horizontalPedding,
              child: Row(
                children: [
            
                  InkWell(
                    onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Skip",style: TextStyle(fontSize: SC.from_width(14),fontWeight: FontWeight.w500),),
                      )),
                  Spacer(),
            
                  ElevatedButton(onPressed: (){
                    if(lastPage)
                      {
            
                      }
                    else
                      {
                        pageController.nextPage(duration: Duration(milliseconds: 150), curve: Curves.linear);
                      }
                  }, child: Text("Continue"))
                ],
              ),
            ),
          )
        ],
      ),


    );
  }
}
