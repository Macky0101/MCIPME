import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MCIPME'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, size: 40.0),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 40,
              child: Container(
                width: double.infinity, // Prend 100% de la largeur de l'écran
                height: MediaQuery.of(context).size.height * 0.2,
                padding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.05, // Padding à gauche
                  0, // Aucun padding en haut
                  MediaQuery.of(context).size.width * 0.05, // Padding à droite
                  0, // Aucun padding en bas
                ),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(1, 116, 129, 1.0), // Opacité de 100%
                      Color.fromRGBO(0, 128, 89, 0.7), // 70% d'opacité
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Centrer les enfants dans la rangée
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 70.0,
                      height: 70.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                        width:
                            10.0), // Ajout d'un espace entre l'image et le texte
                    const Expanded(
                      child: Text(
                        "Ministère du Commerce de l'Industrie et des PME de la Guinée",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.bar_chart,
                        color: Color.fromRGBO(0, 128, 89, 1.0),
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                    Text("Statique"),
                  ],
                ),
                const SizedBox(width: 70.0),
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.factory,
                        color: Color.fromRGBO(0, 128, 89, 1.0),
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                    Text("Industrielle"),
                    SizedBox(width: 20.0),
                  ],
                ),
                const SizedBox(width: 70.0),
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.location_on,
                        color: Color.fromRGBO(0, 128, 89, 1.0),
                        size: 40,
                      ),
                      onPressed: () {},
                    ),
                    Text("Géolocalisation"),
                    const SizedBox(width: 20.0),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 10.0),
                  child: Text(
                    "Production",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
