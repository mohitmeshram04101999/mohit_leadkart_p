import 'package:go_router/go_router.dart';
import 'package:leadkart/screens/leads/getNewLeads.dart';
import 'package:leadkart/screens/onBoardingScreens/OnBordingnavigation.dart';
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
    ],
  );
}