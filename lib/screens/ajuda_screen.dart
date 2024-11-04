import 'package:flutter/material.dart';
import 'clinica_detalhe_screen.dart';
import 'progresso_screen.dart';
import 'vicios_screen.dart';
import 'perfil_screen.dart';

class AjudaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E6E1),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            color: Color(0xFF93A267),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.help, color: Colors.white, size: 24),
                    SizedBox(width: 8),
                    Text(
                      'AJUDA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                // Adicionando um espaço vazio para empurrar o texto para o canto direito
                SizedBox(width: 50),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32), // Afastar as fotos das bordas laterais
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClinicaDetalheScreen()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/imagens/clinica1.jpg',
                      fit: BoxFit.cover,
                      height: 120, // Diminuindo mais a altura das imagens
                    ),
                  ),
                ),
                SizedBox(height: 16), // Aumentando o espaçamento entre as imagens
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/imagens/clinica2.jpg',
                    fit: BoxFit.cover,
                    height: 120,
                  ),
                ),
                SizedBox(height: 16), // Aumentando o espaçamento entre as imagens
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/imagens/clinica3.jpg',
                    fit: BoxFit.cover,
                    height: 120,
                  ),
                ),
                SizedBox(height: 16), // Aumentando o espaçamento entre as imagens
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/imagens/clinica4.jpg',
                    fit: BoxFit.cover,
                    height: 120,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF93A267),
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(252, 255, 255, 255),
        showUnselectedLabels: true,
        iconSize: 30, // Aumenta o tamanho dos ícones
        selectedLabelStyle: TextStyle(fontSize: 16), // Aumenta o tamanho do texto selecionado
        unselectedLabelStyle: TextStyle(fontSize: 14), // Aumenta o tamanho do texto não selecionado
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF93A267),
            icon: Icon(Icons.show_chart),
            label: "Progresso",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning),
            label: "Vícios",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: "Ajuda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
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
              // Já estamos na ViciosScreen
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
              case 4:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ViciosScreen()),
              );
          }
        },
      ),
    );
  }
}
