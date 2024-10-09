import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9F2E6), // Fundo claro
      appBar: AppBar(
        backgroundColor: Color(0xFFE9F2E6),
        elevation: 0,
        toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock, color: Colors.green), // Ícone de cadeado
            SizedBox(width: 10),
            Text(
              "09/10/2024",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Icon(Icons.calendar_today, color: Colors.black),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Calendário com 7 dias e o dia 9 destacado
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "7 de 7",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                for (int i = 8; i <= 12; i++)
                  CircleAvatar(
                    backgroundColor: i == 9 ? Colors.green : Colors.transparent,
                    child: Text(
                      i.toString(),
                      style: TextStyle(color: i == 9 ? Colors.white : Colors.black),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "COMO VOCÊ ESTÁ SE SENTINDO HOJE?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.sentiment_dissatisfied, size: 50, color: Colors.green[700]),
                    SizedBox(height: 8),
                    Text("Triste", style: TextStyle(color: Colors.green[700])),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.sentiment_neutral, size: 50, color: Colors.green[700]),
                    SizedBox(height: 8),
                    Text("Neutro", style: TextStyle(color: Colors.green[700])),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.sentiment_satisfied, size: 50, color: Colors.green[700]),
                    SizedBox(height: 8),
                    Text("Feliz", style: TextStyle(color: Colors.green[700])),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: "Sobre o dia...",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green[100],
        selectedItemColor: Colors.green[700],
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
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
      ),
    );
  }
}
