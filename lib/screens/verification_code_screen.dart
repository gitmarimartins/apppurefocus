import 'package:flutter/material.dart';
import 'reset_password_screen.dart'; // Certifique-se de importar a tela de redefinição de senha

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4EC), // Cor de fundo
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Adiciona a logo no topo
            Image.asset('assets/imagens/logoapp.png', width: 150, height: 150),
            const SizedBox(height: 10),

            // Nome do app "PURE FOCUS"
            const Text(
              'PURE FOCUS',
              style: TextStyle(
                fontFamily: 'LemonMilk',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF485935), // Cor verde escura
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            // Texto de instrução
            const Text(
              'Digite o código de verificação enviado para seu e-mail.',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                fontWeight: FontWeight.bold,
                backgroundColor: Color(0xFFF4F4EC),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Caixas de entrada para o código de verificação (4 quadrados)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return Stack(
                  alignment: Alignment.center, // Centraliza os elementos dentro do Stack
                  children: [
                    // Caixa de entrada para o código
                    SizedBox(
                      width: 60, // Diminuindo o tamanho dos quadrados
                      height: 60, // Mantendo altura igual à largura
                      child: TextField(
                        maxLength: 1, // Permite apenas um dígito por campo
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          counterText: '', // Remove o contador de caracteres
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Borda arredondada
                            borderSide: const BorderSide(
                              color: Colors.transparent, // Sem borda padrão
                            ),
                          ),
                          enabledBorder: _buildCornerBorder(), // Borda habilitada
                          focusedBorder: _buildCornerBorder(), // Borda ao focar
                        ),
                      ),
                    ),
                    // Adiciona o símbolo "+" grande no centro para criar o efeito
                    const Text(
                      '+',
                      style: TextStyle(
                        fontSize: 150, // Mantendo o "+" grande para criar o efeito
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF4F4EC), // Mesma cor do fundo
                      ),
                    ),
                  ],
                );
              }),
            ),
            const SizedBox(height: 70),

            // Botão Verificar com navegação para a tela de redefinição de senha
            ElevatedButton(
              onPressed: () {
                bool isCodeValid = true; // Simulação de validação do código

                if (isCodeValid) {
                  // Navega para a tela de redefinição de senha
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ResetPasswordScreen()),
                  );
                } else {
                  // Exibe mensagem de erro se o código for inválido
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Código inválido, tente novamente.')),
                  );
                }
              },
              child: const Text(
                'Verificar',
                style: TextStyle(
                  fontFamily: 'Poppins', // Fonte Poppins
                  fontSize: 20, // Aumenta o tamanho da fonte
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Texto branco
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF485935), // Cor de fundo do botão
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40), // Reduzindo apenas nas laterais
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Borda mais arredondada
                ),
                elevation: 10, // Adiciona sombra ao botão
                shadowColor: Colors.black.withOpacity(0.3), // Cor da sombra
              ),
            ),
            const SizedBox(height: 20),

            // Texto "Reenviar código" com sublinhado
            TextButton(
              onPressed: () {
                // Ação para reenviar código
              },
              child: const Text(
                'Reenviar código',
                style: TextStyle(
                  fontFamily: 'Poppins', // Fonte Poppins
                  fontSize: 16,
                  decoration: TextDecoration.underline, // Sublinhado
                  color: Colors.black, // Cor do texto
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Método para construir a borda customizada dos quadrados de entrada de código
  InputBorder _buildCornerBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12), // Define o arredondamento dos cantos
      borderSide: const BorderSide(color: Colors.green, width: 2), // Cor da borda
      gapPadding: 0,
    );
  }
}
