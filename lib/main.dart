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
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange, // Cambiar el color de la barra superior
        ),
        scaffoldBackgroundColor: Colors.orange, // Cambiar el color de fondo de la página
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
                Icon(Icons.attach_money, color: Colors.yellow),
                Text('0'),
                Spacer(),
                Icon(Icons.favorite, color: Colors.red),
                Icon(Icons.favorite, color: Colors.red),
                Icon(Icons.favorite, color: Colors.red),
              ],
            ),
            Text(
              '¿Qué quieres jugar?',
              style: TextStyle(
                fontFamily: 'WorkSans',
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InstructionsPage()),
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
                      color: Colors.white, // Cambiar el color del texto a blanco
                      fontFamily: 'WorkSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
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
                      color: Colors.white, // Cambiar el color del texto a blanco
                      fontFamily: 'WorkSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
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
                      color: Colors.white, // Cambiar el color del texto a blanco
                      fontFamily: 'WorkSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
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