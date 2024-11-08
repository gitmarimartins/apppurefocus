import 'package:flutter/material.dart';
import 'progresso_screen.dart';
import 'vicios_screen.dart';
import 'perfil_screen.dart';
import 'ajuda_screen.dart';

class ClinicaDetalheScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E6E1),
      body: SingleChildScrollView( // Adicionando o SingleChildScrollView aqui
        child: Column(
          children: [
            // Barra superior com título e o texto "Contatos e clínicas próximas" ajustado
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              color: Color(0xFF93A267),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Alinhando à esquerda
                children: [
                  Row(
                    children: [
                      Icon(Icons.help, color: Colors.white, size: 50),
                      SizedBox(width: 8),
                      Text(
                        'AJUDA',
                        style: TextStyle(
                          fontFamily: 'LemonMilk',
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // Ajustando o texto "Contatos e clínicas próximas" para ficar encostado em "AJUDA"
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0, top: 0.05), // Ajuste para ficar encostado
                    child: Text(
                      'Contatos e clínicas próximas',
                      style: TextStyle(
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Corpo da tela
            Center(
              child: Padding(
                padding: const EdgeInsets.all(40.0), // Tamanho da margem geral
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0), // Aumentando a lateral da imagem
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'assets/imagens/clinica1.jpg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 300, // Tamanho da imagem
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      width: double.infinity, // Ocupar toda a largura
                      decoration: BoxDecoration(
                        color: Color(0xFF93A267),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        'CLÍNICA VIDA ATIVA',
                        style: TextStyle(
                          fontFamily: 'LemonMilk',
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 26),
                    Container(
                      padding: EdgeInsets.all(20), // Tamanho da caixa de informações
                      decoration: BoxDecoration(
                        color: Color(0xFF93A267),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'INFORMAÇÕES:',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 8),
                          _buildInfoRow('Contato:', '(65) 92989-9876'),
                          _buildInfoRow('E-mail:', 'Clinicavidativa@gmail.com'),
                          _buildInfoRow('Endereço:', 'Rua Das bandeiras, 123'),
                          _buildInfoRow('Horário de atendimento:', '9h às 17h'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF93A267),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
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

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.circle, color: Colors.white, size: 8),
          SizedBox(width: 8),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "$label ", // Remover o negrito aqui
                    style: TextStyle(color: Colors.white, fontSize: 14), // Remover o negrito aqui
                  ),
                  TextSpan(
                    text: value,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
