import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        title: Image.asset('assets/logo.png'), // Reemplaza con la ubicación de tu logo
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
          const Row(
            children: [
              Text('Diamantes: 0'),
              Spacer(),
              Icon(Icons.favorite),
              Icon(Icons.favorite),
              Icon(Icons.favorite),
            ],
          ),
          const Text('¿Qué quieres jugar?'),
          ElevatedButton(
            onPressed: () {
              // Lógica para el botón Ritmo Pictorico
            },
            child: const Row(
              children: [
                Icon(Icons.music_note),
                Text('Ritmo Pictorico'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Lógica para el botón Pintando Sonido
            },
            child: const Row(
              children: [
                Icon(Icons.brush),
                Text('Pintando Sonido'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Lógica para el botón Lienzo Sonoro
            },
            child: const Text('Lienzo Sonoro'),
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