import 'package:go_router/go_router.dart';
import 'package:leadkart/add_images/campaign_setting_page.dart';
import 'package:leadkart/business_pages/growBusinessFaster.dart';
import 'package:leadkart/login_pages/login_screen.dart';
import 'package:leadkart/screens/imageEditor/imageEditor.dart';
import 'package:leadkart/screens/leads/getNewLeads.dart';
import 'package:leadkart/screens/leads/getNewLeads.dart';
import 'package:leadkart/screens/onBoardingScreens/OnBordingnavigation.dart';

import '../component/bottom_navigation_screen.dart';
import 'package:leadkart/screens/onBoardingScreens/OnBordingnavigation.dart';
import '../login_pages/login_screen.dart';
class GoRouterConfig {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => OnBordingMain(),
      ),

      GoRoute(
        name: 'logInScreen',
        path: '/logInScreen',
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        name: 'homePage',
        path: '/homePage',
        builder: (context, state) =>MyBottomNavigationBar(),
        routes: [
          GoRoute(
            name: 'getNewLeads',
            path: 'getNewLeads',
            builder: (context, state) => GetNewLeads(),
          ),
          GoRoute(path: 'campaignSettings', name: 'campaignSettings', builder: (context, state) => CampaignSetting()),
          GoRoute(path: 'growBusinessFaster', name: 'growBusinessFaster', builder: (context, state) => GrowBusinessFaster()),
          GoRoute(path: 'imageEditor', name: 'imageEditor', builder: (context, state) => ImageEditor()),
        ],
      ),
    ],
  );
}