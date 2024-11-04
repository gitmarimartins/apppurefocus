import 'package:flutter/material.dart';
import 'FumarParaAliviarScreen.dart'; // Importação da segunda tela

class PararDeFumarScreen extends StatelessWidget {
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
                        'JÁ TENTOU PARAR DE FUMAR?',
                        style: TextStyle(
                          color: Colors.white,
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
                // Opções do questionário
                ...['Sim, com sucesso', 'Sim, mas não consegui', 'Não tentei'].map(
                  (text) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FumarParaAliviarScreen()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color(0xFFCADBB7),
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

// Painter das esferas
class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint1 = Paint()..color = Color(0xFFCADBB7).withOpacity(0.6);
    final Paint paint2 = Paint()..color = Color(0xFF93A267).withOpacity(0.6);
    final Paint paint3 = Paint()..color = Color(0xFFBACF9B).withOpacity(0.6);

    double radius = 150;

    canvas.drawCircle(Offset(size.width * 0.70, size.height), radius, paint1);
    canvas.drawCircle(Offset(size.width * 0.85, size.height), radius, paint2);
    canvas.drawCircle(Offset(size.width * 0.50, size.height), radius, paint3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
