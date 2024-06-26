import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:time_sheet_flutter_application/Dashboard_Screen.dart';
import 'package:time_sheet_flutter_application/User_panel.dart';
import 'package:time_sheet_flutter_application/add_role.dart';
import 'package:time_sheet_flutter_application/admin_panel.dart';
import 'package:time_sheet_flutter_application/firebase_options.dart';
import 'package:time_sheet_flutter_application/login_screen.dart';
import 'package:time_sheet_flutter_application/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SplashScreen(),
    );
  }
}
