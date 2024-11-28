import 'package:flutter/material.dart';

class GradientBg extends StatelessWidget {
  final Widget child;
  const GradientBg({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-1.0, 1.0),
            end: Alignment(0.0, -0.1),
            stops: [0.1, 1.0],
            colors: [
              Color.fromARGB(133, 243, 184, 8),
              Colors.black,
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
