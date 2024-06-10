import 'package:go_router/go_router.dart';
import 'package:leadkart/screens/leads/getNewLeads.dart';
import 'package:leadkart/screens/onBoardingScreens/OnBordingnavigation.dart';

import '../component/bottom_navigation_screen.dart';
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
        name: 'getNewLeads',
        path: '/getNewLeads',
        builder: (context, state) => GetNewLeads(),
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
      ),
    ],
  );
}