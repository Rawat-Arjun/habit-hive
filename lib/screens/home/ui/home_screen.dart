import 'package:flutter/material.dart';
import 'package:habit_hive/auth_handler/user_auth.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback? isUserLoggedIn;
  const HomeScreen({super.key, this.isUserLoggedIn});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              UserAuth().logoutUser();
              widget.isUserLoggedIn?.call();
            },
            child: Text('this is homepage')),
      ),
    );
  }
}
