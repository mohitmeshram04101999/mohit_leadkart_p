import 'package:flutter/material.dart';
import 'package:leadkart/component/clips/onbording%20cliper.dart';
import 'package:leadkart/helper/dimention.dart';
import 'package:leadkart/login_pages/login_screen.dart';
import '../../helper/helper.dart';

class OnBordingPage extends StatefulWidget {
  final PageController pageController;
  final String mainText;
  final String subTitle;
  final Widget child;
  final bool lastPage;

  OnBordingPage({
    this.lastPage = false,
    required this.child,
    required this.mainText,
    required this.subTitle,
    required this.pageController,
    super.key,
  });

  @override
  _OnBordingPageState createState() => _OnBordingPageState();
}

class _OnBordingPageState extends State<OnBordingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Min App bar
          ClipPath(
            clipper: OnbordingAppBarClip(),
            child: Container(
              width: double.infinity,
              height: SC.from_width(500),
              color: MyHelper.appConstent.OnbordingAppBar,
              child: widget.child,
            ),
          ),
          SizedBox(height: SC.from_width(76)),

          // Main text
          Text(
            widget.mainText,
            style: MyHelper.textStyls.onBordingMainText,
          ),
          SizedBox(height: SC.from_width(16)),

          // Subtitle
          Padding(
            padding: MyHelper.appConstent.horizontalPedding,
            child: Text(
              widget.subTitle,
              textAlign: TextAlign.center,
              style: MyHelper.textStyls.onBordingSubTitle,
            ),
          ),
          Spacer(),

          Padding(
            padding: EdgeInsets.symmetric(vertical: SC.from_width(10)),
            child: Padding(
              padding: MyHelper.appConstent.horizontalPedding,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: SC.from_width(14),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  widget.lastPage? ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInPage()));
                    },
                    child: Text("Start"),
                  ):ElevatedButton(
                    onPressed: () {
                      widget.pageController.nextPage(
                        duration: Duration(milliseconds: 150),
                        curve: Curves.linear,
                      );
                    },
                    child: Text("Continue"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
