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
      appBar: AppBar(
        backgroundColor: Color(0xFF93A267),
        title: Text('Clínica Vida Ativa'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/imagens/clinica1.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF93A267),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'CLÍNICA VIDA ATIVA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF93A267),
                  borderRadius: BorderRadius.circular(10),
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
                    _buildInfoRow('Contato:', '••••••••'),
                    _buildInfoRow('E-mail:', '••••••••@example.com'),
                    _buildInfoRow('Endereço:', 'Rua Exemplo, 123'),
                    _buildInfoRow('Horário de atendimento:', '9h às 17h'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF93A267),
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
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
                    text: "$label ",
                    style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
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
