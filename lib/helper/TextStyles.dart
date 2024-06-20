import 'package:flutter/material.dart';
import 'package:leadkart/helper/dimention.dart';
import 'package:leadkart/helper/helper.dart';


class TextStyles
{
  TextStyle onBordingMainText = TextStyle(fontSize: SC.fromWidth(17),fontWeight: FontWeight.w600,color: Colors.black);
  TextStyle onBordingSubTitle = TextStyle(fontSize: SC.fromWidth(14),fontWeight: FontWeight.w500,color: Color.fromRGBO(96, 96, 96, 1));
  TextStyle leadTileTitle = TextStyle(fontSize: SC.fromWidth(12),fontWeight: FontWeight.w500,color: Color.fromRGBO(2, 2, 2, 1));
  TextStyle leadTileSubTitle = TextStyle(fontSize: SC.fromWidth(12),fontWeight: FontWeight.w400,color: Color.fromRGBO(98, 98, 98, 1));
  TextStyle leadTileWhiteText = TextStyle(fontSize: SC.fromWidth(15),fontWeight: FontWeight.w400,color: Colors.white);
  TextStyle mediumText = TextStyle(fontSize: SC.fromWidth(17),fontWeight: FontWeight.w400,color: Colors.black);
  TextStyle smallText = TextStyle(fontSize: SC.fromWidth(15),fontWeight: FontWeight.w400,color: Color.fromRGBO(98, 98, 98, 1));
  TextStyle smallBoldText = TextStyle(fontSize: SC.fromWidth(15),fontWeight: FontWeight.bold,color: Color.fromRGBO(98, 98, 98, 1));
  TextStyle greenMediumText = TextStyle(fontSize: SC.fromWidth(15),fontWeight: FontWeight.bold,color: MyHelper.appConstent.primeryColor);
  TextStyle blackSmallText = TextStyle(fontSize: SC.fromWidth(12),fontWeight: FontWeight.w400,color: Colors.grey);
}