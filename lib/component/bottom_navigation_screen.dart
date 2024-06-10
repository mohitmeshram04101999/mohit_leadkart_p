import 'dart:async';
import 'package:flutter/material.dart';
import 'package:leadkart/add_images/add_images.dart';
import 'package:leadkart/ads/ads_image.dart';
import 'package:leadkart/ads/create_ads_page.dart';
import 'package:leadkart/business_pages/busines_detail.dart';
import 'package:leadkart/helper/dimention.dart';
import 'package:leadkart/home_pages/home_screen.dart';


class MyBottomNavigationBar extends StatefulWidget {
  int? page;
  MyBottomNavigationBar({this.page, super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int curruntPage = 0;
  late PageController controller;
  int backPress = 0;

  @override
  void initState() {
    super.initState();
    if (widget.page != null) {
      curruntPage = widget.page!;
    }
    controller = PageController(initialPage: curruntPage);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        backPress++;
        if (backPress == 2) {
          return true;
        } else {
          Timer(Duration(seconds: 1), () {
            backPress = 0;
          });
        }
        return false;
      },
      child: Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          children: [
            HomeScreen(),
            AddImages(),
            AdsPage(),
            CreateAds(),
            BusinessDetail(),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.only(top: 3),
          color: Colors.white,
          child: BottomAppBar(
            clipBehavior: Clip.hardEdge,
            padding: EdgeInsets.zero,
            color: Colors.transparent,
            shape: CircularNotchedRectangle(),
            child: BottomNavigationBar(
              iconSize: SC.from_width(22),
              type: BottomNavigationBarType.fixed,
              currentIndex: curruntPage,
              selectedItemColor: Color.fromRGBO(36, 238, 221, 1),
              unselectedItemColor: Colors.grey,
              selectedLabelStyle: TextStyle(color: Color.fromRGBO(36, 238, 221, 1)),
              unselectedLabelStyle: TextStyle(color: Colors.grey),
              onTap: (page) {
                setState(() {
                  curruntPage = page;
                });
                controller.jumpToPage(curruntPage);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    width: SC.from_width(22),
                    height: SC.from_width(22),
                    child: Image.asset(
                      'assets/bottom_nav/5.png',
                      color: curruntPage == 1 ? Color.fromRGBO(36, 238, 221, 1) : Colors.grey,
                    ),
                  ),
                  label: "Add images",
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    width: SC.from_width(22),
                    height: SC.from_width(22),
                    child: Image.asset(
                      'assets/bottom_nav/2.png',
                      color: curruntPage == 2 ? Color.fromRGBO(36, 238, 221, 1) : Colors.grey,
                    ),
                  ),
                  label: "Ads",
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    width: SC.from_width(22),
                    height: SC.from_width(22),
                    child: Image.asset(
                      'assets/bottom_nav/3.png',
                      color: curruntPage == 3 ? Color.fromRGBO(36, 238, 221, 1) : Colors.grey,
                    ),
                  ),
                  label: "Leads",
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    width: SC.from_width(22),
                    height: SC.from_width(22),
                    child: Image.asset(
                      'assets/bottom_nav/4.png',
                      color: curruntPage == 4 ? Color.fromRGBO(36, 238, 221, 1) : Colors.grey,
                    ),
                  ),
                  label: "Busines",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}