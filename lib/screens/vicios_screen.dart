import 'package:flutter/material.dart';
import 'vicio_em_fumar_screen.dart';
import 'ajuda_screen.dart';
import 'progresso_screen.dart';
import 'perfil_screen.dart';

class ViciosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E6E1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF93A267),
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.warning, color: Colors.white, size: 40),
            SizedBox(width: 10),
            Text(
              'VÍCIOS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        toolbarHeight: 80,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildVicioItem(context, 'FUMAR', 'assets/imagens/fumar.jpg'),
          _buildVicioItem(context, 'BEBER', 'assets/imagens/beber.jpg'),
          _buildVicioItem(context, 'USAR DROGAS', 'assets/imagens/drogas.jpg'),
          _buildVicioItem(context, 'BULIMIA', 'assets/imagens/bulimia.jpg'),
          _buildVicioItem(context, 'PORNOGRAFIA', 'assets/imagens/pornografia.jpg'),
        ],
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

  Widget _buildVicioItem(BuildContext context, String title, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: InkWell(
          onTap: () {
            if (title == 'FUMAR') {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VicioEmFumarScreen()),
              );
            }
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.grey.shade800,
                    BlendMode.saturation,
                  ),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 100,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.black.withOpacity(0.5),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
