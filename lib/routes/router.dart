import 'package:go_router/go_router.dart';
import 'package:leadkart/screens/1%20.%20OnBording%20Screens/OnBordingnavigation.dart';
import 'package:leadkart/screens/leads/getNewLeads.dart';
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