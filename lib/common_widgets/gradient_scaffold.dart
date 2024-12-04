import 'package:flutter/material.dart';
import 'dart:math' as math;

class GradientScaffold extends StatelessWidget {
  final Widget child;
  const GradientScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            transform: GradientRotation(-math.pi / 5),
            stops: [0.05, 0.1, 0.45, 1],
            colors: [
              Color.fromRGBO(255, 174, 0, 0.5),
              Color.fromRGBO(145, 99, 0, 0.65),
              Color.fromRGBO(73, 50, 1, 0.8),
              Color.fromRGBO(0, 0, 0, 1),
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
