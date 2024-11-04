import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'forgot_password.dart';
import 'home_screen.dart'; // Importe a tela inicial
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _login(BuildContext context) {
    // Código do login sem Firebase
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    // Verifique se os campos estão vazios
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, preencha todos os campos.')),
      );
      return; // Não prossegue se os campos estiverem vazios
    }

    // Verifique se o email é válido
    if (email.endsWith('@gmail.com') || email.endsWith('@hotmail.com')) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, insira um email válido.')),
      );
      return; // Não prossegue se o email for de domínios não desejados
    }

    // Se tudo estiver correto, vá para a HomeScreen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  void _signInWithGoogle() async {
    final Uri _url = Uri.parse('https://your-google-auth-url'); // Coloque aqui sua URL de autenticação
    if (await canLaunch(_url.toString())) {
      await launch(_url.toString());
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Image.asset('assets/imagens/logoapp.png', width: 200, height: 200),
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
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Digite seu email',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                  ),
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.black),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  contentPadding: EdgeInsets.only(left: 40),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Digite sua senha',
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                  ),
                  prefixIcon: Icon(Icons.lock_outline, color: Colors.black),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  contentPadding: EdgeInsets.only(left: 40),
                ),
                obscureText: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
                    );
                  },
                  child: Text(
                    'Esqueci minha senha',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _login(context),
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF485935),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  elevation: 5,
                  shadowColor: Colors.black.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'ou',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton.icon(
                onPressed: _signInWithGoogle,
                icon: Image.asset(
                  'assets/imagens/icongoogle.png',
                  width: 30,
                  height: 30,
                ),
                label: Text(
                  'Entrar com o Google',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF485935),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Não possui uma conta? ',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Cadastre-se',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
