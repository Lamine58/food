import 'package:e_foodivoir/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'font'
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen()
    );
  }
}
