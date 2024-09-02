import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test/views/home_view.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'splachScreen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed(HomeScreen.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.orange,
              Colors.deepOrange,
            ],
          ),
        ),
        child: Center(
          child: SizedBox(
            height: 88.25,
            width: 92,
            child: Image.asset(
              'assets/images/union.png',
              color: const Color(0xFFFFE6E6),
            ),
          ),
        ),
      ),
    );
  }
}
