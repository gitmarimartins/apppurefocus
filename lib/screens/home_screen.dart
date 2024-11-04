import 'package:flutter/material.dart';
import 'ajuda_screen.dart';
import 'progresso_screen.dart';
import 'vicios_screen.dart';
import 'perfil_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF93A267), // Cor verde do BottomNavigationBar
          selectedItemColor: Colors.white, // Cor do item selecionado
          unselectedItemColor: Colors.white, // Cor dos itens não selecionados
          showUnselectedLabels: true,
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fundo branco
      body: Stack(
        children: [
          // Círculos sobrepostos de fundo
          Positioned(
            top: -100, // Ajusta a posição do círculo esquerdo
            left: -40, // Move para a esquerda para criar interseção
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: -100,
            right: -40,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
          // AppBar modificado
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 100,
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Image.asset(
                'assets/imagens/logoapp.png',
                height: 30,
                width: 30,
              ),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "09/10/2024",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF485935),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.calendar_today,
                  color: Color(0xFF485935),
                ),
              ),
            ],
          ),
          // Conteúdo abaixo do AppBar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 60),
                // Dias da semana e calendário com 7 dias e o dia 9 destacado
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("D", style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF485935))),
                    Text("S", style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF485935))),
                    Text("T", style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF485935))),
                    Text("Q", style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF485935))),
                    Text("Q", style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF485935))),
                    Text("S", style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF485935))),
                    Text("S", style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF485935))),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 6; i <= 12; i++)
                      CircleAvatar(
                        backgroundColor: i == 9 ? Color(0xFF93A267) : Colors.transparent,
                        child: Text(
                          i.toString(),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: i == 9 ? Colors.white : Color(0xFF485935),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 90),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(top: 40),
                    width: 400,
                    decoration: BoxDecoration(
                      color: Color(0xFF93A267),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "COMO VOCÊ ESTÁ SE SENTINDO HOJE?",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.sentiment_dissatisfied, size: 60, color: Colors.white), // Aumenta o tamanho do ícone
                                SizedBox(height: 8),
                                Text(
                                  "Triste",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF485935),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.sentiment_neutral, size: 60, color: Colors.white), // Aumenta o tamanho do ícone
                                SizedBox(height: 8),
                                Text(
                                  "Neutro",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF485935),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.sentiment_satisfied, size: 60, color: Colors.white), // Aumenta o tamanho do ícone
                                SizedBox(height: 8),
                                Text(
                                  "Feliz",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF485935),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        TextField(
                          maxLines: 3,
                          decoration: InputDecoration(
                            hintText: "Sobre o dia...",
                            hintStyle: TextStyle(fontFamily: 'Poppins', color: Color(0xFF485935)),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      
      bottomNavigationBar: Container(
        height: 80, // Aumenta a altura do BottomNavigationBar
        child: BottomNavigationBar(
          backgroundColor: Color(0xFF93A267), // Cor de fundo do BottomNavigationBar
          showUnselectedLabels: true, 
          items: [
            BottomNavigationBarItem(
              backgroundColor: Color(0xFF93A267),
              icon: Icon(Icons.show_chart, size: 30), // Aumenta o tamanho do ícone
              label: "Progresso",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.warning, size: 30), // Aumenta o tamanho do ícone
              label: "Vícios",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help, size: 30), // Aumenta o tamanho do ícone
              label: "Ajuda",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30), // Aumenta o tamanho do ícone
              label: "Perfil",
            ),
          ],
          onTap: (index) {
            switch (index) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProgressoScreen()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViciosScreen()),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AjudaScreen()),
                );
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PerfilScreen()),
                );
                break;
            }
          },
        ),
      ),
    );
  }
}
