import 'package:flutter/material.dart';
import 'ajuda_screen.dart';
import 'progresso_screen.dart';
import 'vicios_screen.dart';
import 'perfil_screen.dart';

class VicioEmFumarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E8D9),
      body: SafeArea(
        child: SingleChildScrollView(  // Permite rolagem se necessário
          child: Column(
            children: [
              const HeaderWidget(),
              const SizedBox(height: 30),
              _buildVicioItem(context, 'FUMAR', 'assets/imagens/fumar.jpg'),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(30),
                child: _buildInformacoesDetalhadas(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildVicioItem(BuildContext context, String title, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            alignment: Alignment.center,
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
                  height: 150,
                ),
              ),
              Container(
                width: double.infinity,
                height: 150,
                color: Colors.black.withOpacity(0.5),
              ),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInformacoesDetalhadas() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFE5E8D9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '• Tratamento:',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Terapia de Substituição de Nicotina: Produtos como adesivos, chicletes e pastilhas de nicotina podem ajudar a reduzir os sintomas de abstinência e facilitar a interrupção do tabagismo.',
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(height: 8),
          const Text(
            '• Medicamentos: Alguns medicamentos, como bupropiona e vareniclina, podem ser prescritos para ajudar a reduzir o desejo por nicotina.',
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(height: 8),
          const Text(
            '• Terapia Comportamental: Terapia Cognitivo-Comportamental (TCC) é útil para identificar gatilhos e desenvolver estratégias para evitá-los.',
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(height: 8),
          const Text(
            '• Grupos de Apoio: Participar de grupos de apoio pode fornecer encorajamento e dicas de quem já passou pelo processo de parar de fumar.',
            style: TextStyle(color: Colors.black),
          ),
          const SizedBox(height: 8),
          const Text(
            '• Mudança de Estilo de Vida: Praticar exercícios físicos, evitar situações de estresse e manter-se ocupado com hobbies saudáveis.',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF93A267),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: true,
      iconSize: 30,
      selectedLabelStyle: const TextStyle(fontSize: 16),
      unselectedLabelStyle: const TextStyle(fontSize: 14),
      items: const [
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
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),  // Usando padding adaptável
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF93A267),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.warning, color: Colors.white, size: 40),
              const SizedBox(width: 10),
              const Text(
                'Vício',
                style: TextStyle(
                  color: Colors.white, 
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LemonMilk', // Fonte LemonMilk aqui
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 55, top: 0.05),
            child: Text(
              'Em fumar',
              style: TextStyle(
                color: Colors.white, 
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
