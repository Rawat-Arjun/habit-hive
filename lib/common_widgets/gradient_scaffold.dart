import 'package:flutter/material.dart';
import 'dart:math' as math;

class GradientScaffold extends StatelessWidget {
  final Widget child;
  const GradientScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 174, 0, 1),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            transform: GradientRotation(-math.pi / 5),
            stops: [0, 0.15, 0.6, 1],
            colors: [
              Color.fromRGBO(73, 50, 1, 1),
              Color.fromRGBO(73, 50, 1, 0.2),
              Color.fromRGBO(0, 0, 0, 1),
              Color.fromRGBO(0, 0, 0, 1),
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
