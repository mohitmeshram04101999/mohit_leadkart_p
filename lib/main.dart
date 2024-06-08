import 'package:flutter/material.dart';
import 'package:leadkart/helper/dimention.dart';
import 'package:leadkart/screens/1%20.%20OnBording%20Screens/OnBordingnavigation.dart';
import 'package:leadkart/them/theme.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SC.getScreen(context);
    return MaterialApp(
      theme: AppTheme(),
      home: OnBordingMain(),
    );
  }
}
