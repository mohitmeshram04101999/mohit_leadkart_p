

import 'package:flutter/material.dart';
import 'package:leadkart/helper/dimention.dart';

import '../helper/helper.dart';

ThemeData AppTheme()
{
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: MyHelper.appConstent.primeryColor,
secondaryHeaderColor: MyHelper.appConstent.leadTiletagColor,
    textTheme: TextTheme(
      displayMedium: MyHelper.textStyls.mediumText,
      displaySmall: MyHelper.textStyls.smallText,
    ),






    //ColorScheme
    colorScheme: ColorScheme.light(
      primary: MyHelper.appConstent.primeryColor,
    ),
    
    //Eleveted Button THeme
    elevatedButtonTheme: ElevatedButtonThemeData(
      
      style: ButtonStyle(
        //border
        shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        )),

        foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),

        backgroundColor: MaterialStateProperty.resolveWith((states) => MyHelper.appConstent.primeryColor),

        textStyle: MaterialStateProperty.resolveWith((states) => TextStyle(fontSize: SC.from_width(14),fontWeight: FontWeight.w600,color: Colors.white))
      )
    ),



  );
}