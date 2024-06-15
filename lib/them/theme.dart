

import 'package:flutter/material.dart';
import 'package:leadkart/helper/dimention.dart';

import '../helper/helper.dart';

ThemeData AppTheme()
{
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: MyHelper.appConstent.primeryColor,
secondaryHeaderColor: MyHelper.appConstent.leadTiletagColor,
    iconTheme: IconThemeData(
      color: Colors.black,
      size: SC.from_width(20)
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) => MyHelper.appConstent.checkBoxColor),
      checkColor: WidgetStateProperty.resolveWith((states) => Colors.white),
    ),
    textTheme: TextTheme(
      displayMedium: MyHelper.textStyls.mediumText,
      displaySmall: MyHelper.textStyls.smallText,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: MyHelper.appConstent.primeryColor
    ),


    outlinedButtonTheme: OutlinedButtonThemeData(
      
      style: ButtonStyle(
        iconSize: WidgetStateProperty.resolveWith((states) => SC.from_width(20)),
        padding:WidgetStateProperty.resolveWith((states) => EdgeInsets.symmetric(horizontal: SC.from_width(10))),
          shape: WidgetStateProperty.resolveWith((states) =>RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          )),
        side:WidgetStateProperty.resolveWith((states) => BorderSide(color: Colors.red))
      ),
    ),



    //ColorScheme
    colorScheme: ColorScheme.light(
      primary: MyHelper.appConstent.primeryColor,
    ),
    
    //Eleveted Button THeme
    elevatedButtonTheme: ElevatedButtonThemeData(
      
      style: ButtonStyle(
        //border
        shape: WidgetStateProperty.resolveWith((states) => RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
        )),

        foregroundColor: WidgetStateProperty.resolveWith((states) => Colors.white),

        backgroundColor: WidgetStateProperty.resolveWith((states) => MyHelper.appConstent.primeryColor),

        textStyle: WidgetStateProperty.resolveWith((states) => TextStyle(fontSize: SC.from_width(14),fontWeight: FontWeight.w600,color: Colors.white))
      )
    ),



  );
}