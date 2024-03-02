import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:zero_to_hero/screens/home_page.dart';
import 'package:zero_to_hero/screens/onboardScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: const Column(
        children: [
          FlutterLogo(size: 100),
          SizedBox(height: 20),
          Text('Zero to Hero', style: TextStyle(fontSize: 24)),
        ],
      ),
      nextScreen: OnBoardScreen(),
      splashIconSize: 400,
      backgroundColor: Color.fromARGB(255, 107, 159, 248),
    );
  }
}
