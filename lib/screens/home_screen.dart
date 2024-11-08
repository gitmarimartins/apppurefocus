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
          // Círculos maiores atrás
          Positioned(
            top: -180, // Mantém a mesma posição
            left: -100, // Mantém a mesma posição
            child: Container(
              height: 460, // Diminuído para criar o efeito desejado
              width: 460, // Diminuído para criar o efeito desejado
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFCBD6B4), // Verde suave
                  width: 40, // Largura da borda
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: -180, // Mantém a mesma posição
            right: -100, // Mantém a mesma posição
            child: Container(
              height: 460, // Diminuído para criar o efeito desejado
              width: 460, // Diminuído para criar o efeito desejado
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFCBD6B4), // Roxo suave
                  width: 40, // Largura da borda
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Círculos sobrepostos de fundo
          Positioned(
            top: -120, // Ajuste a posição para melhor alinhamento
            left: -40, // Ajuste a posição para melhor alinhamento
            child: Container(
              height: 400, // Reduz um pouco o tamanho para não ficar muito grande
              width: 400, // Reduz um pouco o tamanho para não ficar muito grande
              decoration: BoxDecoration(
                color: Color(0xFFF0F3E8), // Verde suave
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: -120, // Ajuste a posição para melhor alinhamento
            right: -40, // Ajuste a posição para melhor alinhamento
            child: Container(
              height: 400, // Reduz um pouco o tamanho para não ficar muito grande
              width: 400, // Reduz um pouco o tamanho para não ficar muito grande
              decoration: BoxDecoration(
                color: Color(0xFFE5E8D9), // Cor ajustada
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
            automaticallyImplyLeading: false,  // Impede que o botão de voltar apareça
            title: Column(
              children: [
                // Linha com a logo e a data
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Image.asset(
                        'assets/imagens/logoapp.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: Icon(
                        Icons.calendar_today,
                        color: Color(0xFF485935),
                      ),
                    ),
                  ],
                ),
                Text(
                  "06/11/2024",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF485935),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    height: 0.50,
                  ),
                ),
              ],
            ),
          ),

          // Conteúdo abaixo do AppBar
          Padding(
            padding: const EdgeInsets.all(23.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 60),
                // Dias da semana
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("D", style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF93A267))),
                    Text("S", style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF93A267))),
                    Text("T", style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF93A267))),
                    Text("Q", style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF93A267))),
                    Text("Q", style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF93A267))),
                    Text("S", style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF93A267))),
                    Text("S", style: TextStyle(fontFamily: 'Poppins', color: Color(0xFF93A267))),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 3; i <= 9; i++)
                      CircleAvatar(
                        backgroundColor: i == 6 ? Color(0xFF93A267) : Colors.transparent,
                        child: Text(
                          i.toString(),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: i == 6 ? Colors.white : Color(0xFF485935),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 150),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    margin: EdgeInsets.only(top: 40),
                    width: 400,
                    decoration: BoxDecoration(
                      color: Color(0xFF93A267),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "COMO VOCÊ ESTÁ                                           SE SENTINDO HOJE?",
                          style: TextStyle(
                            fontFamily: 'LemonMilk',
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
                                Image.asset('assets/imagens/triste.png', height: 60, width: 60),
                                SizedBox(height: 2),
                                Text(
                                  "Triste",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF485935),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset('assets/imagens/neutro.png', height: 60, width: 60),
                                SizedBox(height: 2),
                                Text(
                                  "Neutro",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF485935),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset('assets/imagens/feliz.png', height: 60, width: 60),
                                SizedBox(height: 2),
                                Text(
                                  "Feliz",
                                  style: TextStyle(
                                    fontSize: 18,
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ProgressoScreen()),
                );
                break;
              case 1:
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ViciosScreen()),
                );
                break;
              case 2:
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AjudaScreen()),
                );
                break;
              case 3:
                Navigator.pushReplacement(
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
