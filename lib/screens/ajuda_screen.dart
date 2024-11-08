import 'package:flutter/material.dart';
import 'progresso_screen.dart';
import 'vicios_screen.dart';
import 'perfil_screen.dart';
import 'clinica_detalhe_screen.dart'; // Certifique-se de que este caminho está correto

// Definindo a classe AjudaScreen
class AjudaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E6E1),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
            color: Color(0xFF93A267),
            child: Row(
              children: [
                Icon(Icons.help, color: Colors.white, size: 50),
                SizedBox(width: 8),
                Text(
                  'AJUDA',
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
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ClinicaDetalheScreen()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      'assets/imagens/clinica1.jpg',
                      fit: BoxFit.cover,
                      height: 140,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/imagens/clinica2.jpg',
                    fit: BoxFit.cover,
                    height: 140,
                  ),
                ),
                SizedBox(height: 30),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/imagens/clinica3.jpg',
                    fit: BoxFit.cover,
                    height: 140,
                  ),
                ),
                SizedBox(height: 30),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/imagens/clinica4.jpg',
                    fit: BoxFit.cover,
                    height: 140,
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
        iconSize: 30,
        selectedLabelStyle: TextStyle(fontSize: 16),
        unselectedLabelStyle: TextStyle(fontSize: 14),
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
    );
  }
}
