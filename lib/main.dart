import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pure Focus',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(), // Inicia com a SplashScreen
      debugShowCheckedModeBanner: false,
    );
  }
}
