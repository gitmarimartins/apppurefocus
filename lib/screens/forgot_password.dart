import 'package:flutter/material.dart';
import 'verification_code_screen.dart'; // Certifique-se de que o caminho está correto.

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4EC),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/imagens/logoapp.png', width: 150, height: 150),
            const SizedBox(height: 10),
            const Text(
              'PURE FOCUS',
              style: TextStyle(
                fontFamily: 'LemonMilk',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF485935),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Digite seu e-mail para redefinir sua senha:',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // Campo de texto para o e-mail
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 2),
              ),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  labelStyle: const TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(
                    Icons.alternate_email,
                    color: Colors.black,
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                // Navegar para a tela de verificação de código
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VerificationCodeScreen(),
                  ),
                );
              },
              child: const Text(
                'Recuperar senha',
                style: TextStyle(
                  fontFamily: 'LemonMilk',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF485935),
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Entrar',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
