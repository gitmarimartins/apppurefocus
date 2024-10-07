import 'package:flutter/material.dart';
import 'signup_screen.dart'; // Importando a tela de cadastro
import 'forgot_password.dart'; // Importando a tela de recuperação de senha

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB), // Fundo na cor #FBFBFB
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo centralizada
            Image.asset('assets/imagens/logoapp.png', width: 200, height: 200),
            SizedBox(height: 15),
            // Texto de título com fonte LemonMilk Bold
            Text(
              'PURE FOCUS',
              style: TextStyle(
                fontFamily: 'LemonMilk',
                fontSize: 35,
                fontWeight: FontWeight.bold, // Usando LemonMilk Bold
                color: Color(0xFF485935), // Verde escuro
              ),
            ),
            SizedBox(height: 30),
            // Campo de e-mail
            TextField(
              decoration: InputDecoration(
                labelText: 'Digite seu email',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins', // Fonte Poppins para labels
                  fontWeight: FontWeight.normal, // Usando Poppins regular
                ),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.black, // Ícone preto
                ),
                prefixIconConstraints: BoxConstraints(minWidth: 40), // Espaço para o ícone
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black), // Linha preta
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black), // Linha preta ao focar
                ),
                contentPadding: EdgeInsets.only(left: 40), // Espaçamento do texto
              ),
            ),
            SizedBox(height: 20),
            // Campo de senha
            TextField(
              decoration: InputDecoration(
                labelText: 'Digite sua senha',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins', // Fonte Poppins para labels
                  fontWeight: FontWeight.normal, // Usando Poppins regular
                ),
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.black, // Ícone preto
                ),
                prefixIconConstraints: BoxConstraints(minWidth: 40), // Espaço para o ícone
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black), // Linha preta
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black), // Linha preta ao focar
                ),
                contentPadding: EdgeInsets.only(left: 40), // Espaçamento do texto
              ),
              obscureText: true, // Campo de senha oculta
            ),
            // Link de recuperação de senha
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
                    fontFamily: 'Poppins', // Fonte Poppins para link
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Botão de entrar com sombra
            ElevatedButton(
              onPressed: () {}, // Lógica do botão "Entrar"
              child: Text(
                'Entrar',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins', // Usando Poppins Bold para botão
                  fontWeight: FontWeight.bold, // Texto mais grosso
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF93A267), // Cor do botão
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40), // Menor largura
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0), // Bordas mais quadradas
                ),
                elevation: 5, // Adiciona sombra
                shadowColor: Colors.black.withOpacity(0.5), // Cor da sombra
              ),
            ),
            SizedBox(height: 15),
            Text(
              'ou',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontFamily: 'Poppins', // Fonte Poppins para "ou"
                fontWeight: FontWeight.normal, // Usando Poppins regular
              ),
            ),
            SizedBox(height: 15),
            // Botão de login com Google
            ElevatedButton.icon(
              onPressed: () {}, // Lógica para "Entrar com o Google"
              icon: Image.asset(
                'assets/imagens/icongoogle.png', // Usando a imagem como ícone
                width: 30, // Tamanho da imagem
                height: 30, // Tamanho da imagem
              ),
              label: Text(
                'Entrar com o Google',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins', // Usando Poppins Bold para botão
                  fontWeight: FontWeight.bold, // Texto mais grosso
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF93A267), // Cor do botão
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0), // Bordas mais quadradas
                ),
              ),
            ),
            SizedBox(height: 20),
            // Link para criar conta
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: Text(
                'Não possui uma conta? Cadastre-se',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins', // Fonte Poppins para cadastro
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
