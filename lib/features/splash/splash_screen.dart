import 'dart:async';

import 'package:books_app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

import '../../core/routing/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      context.pushReplacementNamed(Routes.signin);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/splash screen.png",
          fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
