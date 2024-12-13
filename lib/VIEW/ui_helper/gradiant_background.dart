import 'package:flutter/material.dart';

class GradientBackGround extends StatelessWidget {
  const GradientBackGround({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 194, 213, 229), Colors.white])),
    );
  }
}
