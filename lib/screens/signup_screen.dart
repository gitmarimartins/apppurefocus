import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Importando para autenticação
import 'home_screen.dart'; // Importando a tela inicial do seu app

// Classe principal que representa a tela de cadastro (SignupScreen)
class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  Future<void> _register() async {
    // Verifique se os campos estão preenchidos e se as senhas coincidem
    if (_passwordController.text == _confirmPasswordController.text) {
      try {
        // Criação do usuário com email e senha
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        // Navega para a tela inicial do app
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()), // Navegando para a tela inicial
        );
      } catch (e) {
        // Trate erros, como e-mail já cadastrado
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Erro ao cadastrar: $e'),
        ));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('As senhas não coincidem!'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4EC), // Cor de fundo
      body: SingleChildScrollView( // Adicionado para permitir rolagem
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/imagens/logoapp.png', width: 150, height: 150),
            SizedBox(height: 15),
            Text(
              'PURE FOCUS',
              style: TextStyle(
                fontFamily: 'LemonMilk',
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color(0xFF485935),
              ),
            ),
            SizedBox(height: 30),
            // Campo para o nome
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Digite seu nome',
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.person, color: Colors.black),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF6A6D40))),
              ),
            ),
            SizedBox(height: 20),
            // Campo para o email
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Digite seu email',
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.email, color: Colors.black),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF6A6D40))),
              ),
            ),
            SizedBox(height: 20),
            // Campo para a senha
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Digite sua senha',
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.lock, color: Colors.black),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF6A6D40))),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            // Campo para confirmar a senha
            TextField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirme sua senha',
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.lock, color: Colors.black),
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xFF6A6D40))),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            // Botão de cadastro
            ElevatedButton(
              onPressed: _register, // Chama a função de cadastro
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF93A267),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                elevation: 15,
              ),
              child: Text(
                'Cadastre-se',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 25, color: Colors.white),
              ),
            ),
            SizedBox(height: 15),
            // Botão de texto para voltar à tela de login
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Volta para a tela anterior
              },
              child: RichText(
                text: TextSpan(
                  text: 'Já possui uma conta? ',
                  style: TextStyle(fontFamily: 'Poppins', color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Entrar',
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
