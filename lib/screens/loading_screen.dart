import 'package:flutter/material.dart';
import 'login_screen.dart'; // Importando a tela de login

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    // Simulação de carregamento, depois vai para a tela de login
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF93A267), // Cor de fundo em #93A267
      body: Center(
        child: Image.asset(
          'assets/imagens/logoappinicio.png', // Corrigido para o caminho correto da logo
          width: 180,
          height: 180,
        ), // Logo no centro
      ),
    );
  }
}
