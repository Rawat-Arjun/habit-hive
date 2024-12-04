import 'package:flutter/material.dart';

class GradientScaffold extends StatelessWidget {
  final Widget child;
  const GradientScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.15, 0.3),
            end: Alignment(0.0, -0.1),
            // stops: [0.4, 0.6, 0.8, 1.0],
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
