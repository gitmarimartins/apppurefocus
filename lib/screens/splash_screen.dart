import 'package:flutter/material.dart';
import 'dart:async';
import 'login_screen.dart'; // Importando a tela de login

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer para ir para a próxima tela após 3 segundos
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF93A267), // Cor de fundo alterada para #93A267
      body: Center(
        child: Image.asset(
          'assets/imagens/logoappinicio.png', // Certifique-se de que o caminho está correto
          width: 200, // Tamanho da imagem
          height: 200,
        ),
      ),
    );
  }
}
