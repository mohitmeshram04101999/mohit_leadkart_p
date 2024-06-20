
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:leadkart/component/clips/onbording%20cliper.dart';
import 'package:leadkart/helper/dimention.dart';

import '../../helper/helper.dart';
import '../../login_pages/login_screen.dart';

class OnBordingPage extends StatefulWidget {
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
  State<OnBordingPage> createState() => _OnBordingPageState();
}

class _OnBordingPageState extends State<OnBordingPage> {
  @override
  Widget build(BuildContext context) {

    //Scaffold
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        
          children: [

            //Min App bar
        
            ClipPath(
              clipper: OnbordingAppBarClip(),
              child: Container(
                width: double.infinity,
                height: SC.fromHeight(2),
                color: MyHelper.appConstent.OnbordingAppBar,
                child: widget.child,
              ),
            ),
        
            SizedBox(height: 15,),
        
        
        
            //main text
            Text(widget.mainText,style: Theme.of(context).textTheme.bodyMedium,),
        
            //subtitle
            Padding(
              padding: MyHelper.appConstent.horizontalPedding,
              child: Text(widget.subTitle,textAlign: TextAlign.center,style: TextStyle(fontSize: SC.fromWidth(22),fontWeight: FontWeight.w500,color: Color.fromRGBO(96, 96, 96, 1))),
            ),

            SizedBox(height: SC.fromWidth(3),),
            Padding(
              padding: EdgeInsets.symmetric(vertical: SC.fromWidth(10)),
              child: Padding(
                padding:MyHelper.appConstent.horizontalPedding,
                child: Row(
                  children: [

                    InkWell(
                      onTap: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Skip",style: TextStyle(fontSize: SC.fromWidth(22),fontWeight: FontWeight.w500),),
                        )),
                    Spacer(),
                    widget.lastPage? ElevatedButton(
                      onPressed: () {
                        context.pushNamed("logInScreen");

                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      },
                      child: Text("Start"),
                    ):ElevatedButton(
                      onPressed: () {
                        widget.pageController.nextPage(
                          duration: Duration(milliseconds: 150),
                          curve: Curves.linear,
                        );
                      },
                      child: Text("Continue",style: TextStyle(fontSize: SC.fromWidth(22)),),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),


    );
  }
}
