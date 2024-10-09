import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Importa o Firebase
import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Garante que o Flutter esteja inicializado
  await Firebase.initializeApp(); // Inicializa o Firebase
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
