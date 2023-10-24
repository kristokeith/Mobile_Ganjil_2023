import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splash_logo.jpg',
              height: 300,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Midterm Mobile Splash Login Signup',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black, 
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Keith Cahyawiyanata',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black, 
              ),
            ),
            SizedBox(height: 2,),
            Text(
              '2141720217',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black87, 
              ),
            ),
            SizedBox(height: 2,),
            Text(
              'TI - 3I',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black, 
              ),
            ),
            SizedBox(height: 20,),
            if (defaultTargetPlatform == TargetPlatform.android)
              const CircularProgressIndicator(
                color: Colors.blue,
              )
          ],
        ),
      ),
    );
  }
}
