import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_hive/firebase_options.dart';
import 'package:habit_hive/router/go_router.dart';
import 'package:habit_hive/screens/user_auth_screen/bloc/user_auth_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SigninBloc(),
      child: MaterialApp.router(
        title: 'Flutter Demo',
        routerConfig: GoRouter(routes: MyRouter.routes),
      ),
    );
  }
}
