// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'dart:async';
import 'package:e_foodivoir/tabs.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  Future<void> initializeData() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Tabs()),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => initializeData(),
    );
  }


  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff609b83), Color.fromARGB(255, 36, 68, 61)],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('E-FoodIvoire',style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 255, 255, 255),fontSize: 60))
            ],
          ),
        ),
      ),
    );
  }
}
