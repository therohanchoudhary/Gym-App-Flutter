import 'dart:async';
import 'package:flutter/material.dart';
import 'package:the_body_move/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => MyHomePage())));
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
              height: height - 20,
              width: width - 20,
              child: Image.asset('assets/images/logo.png')),
        ));
  }
}
