import 'package:go_router/go_router.dart';
import 'package:habit_hive/screens/home/ui/home_screen.dart';
import 'package:habit_hive/screens/onboarding/ui/onboarding_screen.dart';
import 'package:habit_hive/screens/user_auth_screen/ui/create_account_screen.dart';
import 'package:habit_hive/screens/user_auth_screen/ui/login_screen.dart';

class MyRouter {
  static List<GoRoute> routes = [
    GoRoute(
      path: '/',
      name: 'onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/signin',
      name: 'signin',
      builder: (context, state) => const LogInScreen(),
    ),
    GoRoute(
      path: '/signup',
      name: 'signup',
      builder: (context, state) => const CreateAccountScreen(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    )
  ];
}
