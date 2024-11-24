import 'package:go_router/go_router.dart';
import 'package:habit_hive/screens/onboarding/ui/onboarding_screen.dart';
import 'package:habit_hive/screens/user_auth_screen/ui/signin_screen.dart';

class MyRouter {
  static List<GoRoute> routes = [
    GoRoute(
      path: '/',
      name: 'onboarding',
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(
      path: '/signin',
      name: 'signin',
      builder: (context, state) => LogInScreen(),
    ),
    GoRoute(
      path: '/signup',
      name: 'signup',
      builder: (context, state) => LogInScreen(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => LogInScreen(),
    )
  ];
}
