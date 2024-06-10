import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leadkart/helper/dimention.dart';
import 'package:leadkart/routes/router.dart';
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
    return GetMaterialApp.router(
      theme: AppTheme(),
      routeInformationProvider: GoRouterConfig.router.routeInformationProvider,
      routerDelegate: GoRouterConfig.router.routerDelegate,
      backButtonDispatcher: GoRouterConfig.router.backButtonDispatcher,
      routeInformationParser: GoRouterConfig.router.routeInformationParser,
    );
  }
}
