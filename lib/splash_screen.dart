import 'dart:async';

import 'package:app_imdb/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const MyHomePage(title: 'Flutter Demo Home Page'),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
            child: Text('Movie App',
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    color: Colors.white))),
      ),
    );
  }
}
