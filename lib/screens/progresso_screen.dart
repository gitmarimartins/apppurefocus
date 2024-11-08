import 'package:flutter/material.dart';
import 'ajuda_screen.dart';
import 'vicios_screen.dart';
import 'perfil_screen.dart';

class ProgressoScreen extends StatefulWidget {
  @override
  _ProgressoScreenState createState() => _ProgressoScreenState();
}

class _ProgressoScreenState extends State<ProgressoScreen> {
  // Variáveis para as alturas dos gráficos
  double alturaFumar = 0;
  double alturaProgress = 0;
  double alturaMetas = 0;
  double alturaOutras = 0;

  @override
  void initState() {
    super.initState();

    // Animação para os gráficos subirem
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        alturaFumar = 180;
        alturaProgress = 150;
        alturaMetas = 170;
        alturaOutras = 110; // Para a última barra
      });
    });
  }

  void showMessage(String message) {
    // Exibe um SnackBar com a mensagem
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 3),
      ),
    );
  }

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
                        fontFamily: 'LemonMilk',
                        color: Colors.white,
                        fontSize: 28,
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
                          GestureDetector(
                            onTap: () {
                              showMessage("A barra de Fumar indica o progresso na redução de vícios relacionados ao tabagismo.");
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                AnimatedContainer(
                                  width: 40,
                                  height: alturaFumar,
                                  duration: Duration(seconds: 2),
                                  curve: Curves.easeOut,
                                  color: Color(0xFF4C5C25),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              showMessage("A barra de Progresso mostra seu avanço no objetivo geral de parar de fumar.");
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                AnimatedContainer(
                                  width: 40,
                                  height: alturaProgress,
                                  duration: Duration(seconds: 2),
                                  curve: Curves.easeOut,
                                  color: Color(0xFF93A267),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              showMessage("A barra de Metas reflete as metas específicas que você atingiu.");
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                AnimatedContainer(
                                  width: 40,
                                  height: alturaMetas,
                                  duration: Duration(seconds: 2),
                                  curve: Curves.easeOut,
                                  color: Color(0xFFCADBB7),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              showMessage("A barra de Outras representa outros aspectos relevantes para o seu progresso.");
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                AnimatedContainer(
                                  width: 40,
                                  height: alturaOutras,
                                  duration: Duration(seconds: 2),
                                  curve: Curves.easeOut,
                                  color: Color(0xFFD3D9C2),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
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
                      'Você está há 0 dias\nsem Fumar.',
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
                      'Você atingiu 0 metas\naté agora.',
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
