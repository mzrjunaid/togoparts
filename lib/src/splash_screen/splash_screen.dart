import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          "../../../assets/images/splash_logo.png",
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
