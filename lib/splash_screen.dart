import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:time_sheet_flutter_application/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the main application screen after a certain duration
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginDemo(), // Remove'const' from here
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Your splash screen logo widget
        child: Image.network(
          "https://www.liquidplanner.com/wp-content/uploads/2022/04/Release-Notes-Featured-Images-R27-Timesheets-1200-%C3%97-752-px-1024x642.png",
          fit: BoxFit.fill,
        ), // Replace with your splash screen logo asset
      ),
    );
  }
}
