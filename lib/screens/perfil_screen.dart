import 'package:flutter/material.dart';
import 'progresso_screen.dart';
import 'vicios_screen.dart';
import 'ajuda_screen.dart';

class PerfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E6E1), // Cor de fundo da tela
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
            crossAxisAlignment: CrossAxisAlignment.center, // Centraliza horizontalmente
            children: [
              // Avatar e Nome de Usuário
              CircleAvatar(
                radius: 130, // Tamanho grande do avatar
                backgroundColor: Color(0xFF93A267), // Cor de fundo do avatar
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 190, // Tamanho aumentado do ícone
                ),
              ),
              SizedBox(height: 24), // Espaçamento entre o avatar e o nome
              Text(
                'Nome do usuário',
                style: TextStyle(
                  color: Color(0xFF93A267),
                  fontSize: 24, // Tamanho maior da fonte
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center, // Centraliza o texto
              ),
              SizedBox(height: 12), // Espaçamento entre o nome e o link
              Text(
                'Trocar foto de perfil',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16, // Tamanho da fonte
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center, // Centraliza o texto
              ),
              SizedBox(height: 50), // Espaçamento entre o link e as opções

              // Opções de Configuração
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Alinhamento à esquerda
                children: [
                  Text('• Configurações',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20, // Tamanho maior da fonte
                      )),
                  SizedBox(height: 16), // Espaçamento entre os textos
                  Text('• Notificações',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20, // Tamanho maior da fonte
                      )),
                  SizedBox(height: 16), // Espaçamento entre os textos
                  Text('• Privacidade da conta',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20, // Tamanho maior da fonte
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
      // Barra de navegação inferior
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF93A267), // Cor de fundo da barra
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart, size: 32), // Ícone maior
            label: "Progresso",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning, size: 32), // Ícone maior
            label: "Vícios",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help, size: 32), // Ícone maior
            label: "Ajuda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 32), // Ícone maior
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
