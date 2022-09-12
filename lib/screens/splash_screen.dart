import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tagihan/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void moveToOnboarding(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      );
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    moveToOnboarding(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/gradient.png'),
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 55,
                ),
                const SizedBox(width: 10),
                const Text(
                  'Tagihan',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
