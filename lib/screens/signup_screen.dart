import 'package:flutter/material.dart';
import 'questionario_vicios_screen.dart'; // Certifique-se de que o caminho está correto

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  void _register() {
    // Verifique se os campos estão preenchidos e se as senhas coincidem
    if (_nameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty &&
        _confirmPasswordController.text.isNotEmpty) {
      
      if (_passwordController.text == _confirmPasswordController.text) {
        // Exibe uma mensagem de sucesso
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Cadastro concluído com sucesso!'),
          duration: Duration(seconds: 2),
        ));
        
        // Aguardar 2 segundos e redirecionar para a tela de questionário
        Future.delayed(Duration(seconds: 2), () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => QuestionarioScreen()), // Certifique-se de que QuestionarioScreen está definido
          );
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('As senhas não coincidem!'),
        ));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Por favor, preencha todos os campos!'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
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
            SizedBox(height: 80),
            ElevatedButton(
              onPressed: _register,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF485935),
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                elevation: 15,
              ),
              child: Text(
                'Cadastre-se',
                style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
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
