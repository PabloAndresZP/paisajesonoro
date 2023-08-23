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
      
      body: Column(
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
      MaterialPageRoute(builder: (context) => InstructionsPage()), // Cambia aquí
    );
  },
  style: ElevatedButton.styleFrom(
    minimumSize: Size(218, 200),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(3),
    ),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(Icons.music_note, size: 48),
      SizedBox(height: 8),
      Text('Ritmo Pictórico', style: TextStyle(fontSize: 18)),
    ],
  ),
),
          const SizedBox(height: 16), // Espacio entre elementos
          ElevatedButton(
            onPressed: () {
              // Lógica para el botón Pintando Sonido
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.brush),
                Text('Pintando Sonido'),
              ],
            ),
          ),
          const SizedBox(height: 16), // Espacio entre elementos
          ElevatedButton(
            onPressed: () {
              // Lógica para el botón Lienzo Sonoro
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.brush), // Icono que desees
                SizedBox(height: 8), // Espacio entre el icono y el texto
                Text('Lienzo Sonoro'),
              ],
            ),
          ),
        ],
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