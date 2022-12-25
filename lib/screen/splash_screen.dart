import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'home.dart';class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  AnimatedSplashScreen(
              duration: 1500,
              backgroundColor: Colors.blue.shade200,
              nextScreen: const Home(),
              splashTransition: SplashTransition.sizeTransition,
              splashIconSize: 500,
              splash: Center(            
                child: Image.asset(                    
                    'assets/logo-sisma.png',
                ),
              ),

            )
        ),
      );
  }

}