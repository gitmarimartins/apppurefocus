import 'package:flutter/material.dart';
import 'parar_de_fumar_screen.dart'; // Importe a tela PararDeFumarScreen

class FrequencyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset('assets/imagens/logoapp.png', width: 45, height: 45),
            SizedBox(width: 8),
            Text(
              'Questionário de vícios',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          CustomPaint(
            painter: CirclePainter(),
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 70),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFF93A267),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'VOCÊ FUMA COM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'LemonMilk',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'QUE FREQUÊNCIA?',
                        style: TextStyle(
                          color:  Color.fromARGB(255, 255, 255, 255),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'LemonMilk',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                ...[
                  'Nunca',
                  'Raramente (1 à 2 vezes por semana)',
                  'Regularmente (Todos os dias)',
                  'Em grandes quantidades (mais de um maço por dia)'
                ].map(
                  (text) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PararDeFumarScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          color:Color(0xFFE5E8D9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              text,
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ).toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Definição de cores com opacidades ajustadas para um efeito idêntico
    final Paint paint3 = Paint()..color = Color(0xFFE5E8D9).withOpacity(0.8); // Cor clara
    final Paint paint2 = Paint()..color = Color(0xFF93A267).withOpacity(0.8); // Cor intermediária
    final Paint paint1 = Paint()..color = Color(0xFFCBD6B4).withOpacity(0.7); // Cor escura

    // Ajuste nos tamanhos e posições dos círculos para efeito desejado
    double radius1 = 300;
    double radius2 = 240;
    double radius3 = 230; // Aumentando o tamanho do p3

    // Círculos posicionados com precisão na parte inferior para replicar o design
    canvas.drawCircle(Offset(size.width * 0.5, size.height * 1.20), radius1, paint1);
    canvas.drawCircle(Offset(size.width * 0.8, size.height * 0.98), radius2, paint2);
    // Movendo o p3 mais para cima e para a direita
    canvas.drawCircle(Offset(size.width * 0.7, size.height * 1.08), radius3, paint3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}