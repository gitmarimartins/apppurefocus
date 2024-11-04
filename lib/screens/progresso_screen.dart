import 'package:flutter/material.dart';
import 'ajuda_screen.dart';
import 'vicios_screen.dart';
import 'perfil_screen.dart';

class ProgressoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E8D9),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 80, // Aumentado para 80
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF93A267), // Mesma cor da barra de navegação
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.show_chart, color: Colors.white, size: 30),
                    SizedBox(width: 10),
                    Text(
                      'SEU PROGRESSO',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 90),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 95.0),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      'Gráfico de progresso',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.grey[700],
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 40,
                                height: 180,
                                color: Color(0xFF4C5C25),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 40,
                                height: 150,
                                color: Color(0xFF93A267),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 40,
                                height: 170,
                                color: Color(0xFFCADBB7),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 40,
                                height: 110,
                                color: Color(0xFFD3D9C2),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 95.0),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
                  children: [
                    Text(
                      'Dias sem recaída:',
                      textAlign: TextAlign.center, // Centraliza horizontalmente
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF4C5C25),
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Você está há X dias\nsem [vício escolhido].',
                      textAlign: TextAlign.center, // Centraliza horizontalmente
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.grey[700],
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Metas atingidas:',
                      textAlign: TextAlign.center, // Centraliza horizontalmente
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF4C5C25),
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Você atingiu X metas\naté agora.',
                      textAlign: TextAlign.center, // Centraliza horizontalmente
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.grey[700],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80, // Aumentado para 70
        color: Color(0xFF93A267),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProgressoScreen()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.show_chart, color: Colors.white),
                  Text("Progresso", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViciosScreen()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.warning, color: Colors.white),
                  Text("Vícios", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AjudaScreen()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.help, color: Colors.white),
                  Text("Ajuda", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PerfilScreen()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person, color: Colors.white),
                  Text("Perfil", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
