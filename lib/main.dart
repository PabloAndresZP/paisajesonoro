import 'package:flutter/material.dart';

import 'src/pages/instructions_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 123, 90, 180),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Paisaje Sonoro'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Lógica para abrir el menú hamburguesa
          },
        ),
        title: Image.asset('assets/logo.png'), // Ruta a tu logo
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Lógica para abrir el buscador
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.attach_money, color: Colors.yellow), // Icono de diamante
                Text('0'), // Cantidad de diamantes
                Spacer(),
                Icon(Icons.favorite, color: Colors.red),
                Icon(Icons.favorite, color: Colors.red),
                Icon(Icons.favorite, color: Colors.red),
              ],
            ),
            Text(
              '¿Qué quieres jugar?',
              style: TextStyle(
                fontFamily: 'Aldrich',
                fontSize: 21,
              ),
            ),
            const SizedBox(height: 16), // Espacio entre elementos
           ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => InstructionsPage()), // Cambia aquí si es la página correcta
    );
  },
  style: ElevatedButton.styleFrom(
    minimumSize: Size(216, 216),
    shape: CircleBorder(),
    primary: Color.fromRGBO(170, 212, 226, 1),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.brush),
      Text(
        'Ritmo Pictórico',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'WorkSans', // Nombre de la fuente definido en pubspec.yaml
          fontWeight: FontWeight.bold, // Fuente en negrita
          fontSize: 17, // Tamaño de fuente 17px
        ),
      ),
    ],
  ),
),
            const SizedBox(height: 16), // Espacio entre elementos
            ElevatedButton(
  onPressed: () {
    // Lógica para el botón Pintando Sonido
  },
  style: ElevatedButton.styleFrom(
    minimumSize: Size(216, 216),
    shape: CircleBorder(),
    primary: Color.fromRGBO(170, 212, 226, 1),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.brush),
      Text(
        'Pintando Sonido',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'WorkSans', // Nombre de la fuente definido en pubspec.yaml
          fontWeight: FontWeight.bold, // Fuente en negrita
          fontSize: 17, // Tamaño de fuente 17px
        ),
      ),
    ],
  ),
),
            const SizedBox(height: 16), // Espacio entre elementos
            ElevatedButton(
  onPressed: () {
    // Lógica para el botón Pintando Sonido
  },
  style: ElevatedButton.styleFrom(
    minimumSize: Size(216, 216),
    shape: CircleBorder(),
    primary: Color.fromRGBO(170, 212, 226, 1),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.brush),
      Text(
        'Lienzo Sonoro',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'WorkSans', // Nombre de la fuente definido en pubspec.yaml
          fontWeight: FontWeight.bold, // Fuente en negrita
          fontSize: 17, // Tamaño de fuente 17px
        ),
      ),
    ],
  ),
),
            const SizedBox(height: 16), // Espacio entre elementos
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.help),
              onPressed: () {
                // Lógica para el icono de ayuda
              },
            ),
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Lógica para el icono de home
              },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                // Lógica para avanzar
              },
            ),
          ],
        ),
      ),
    );
  }
}