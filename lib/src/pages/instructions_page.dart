import 'package:flutter/material.dart';
import 'package:application_1/src/pages/game1_page.dart'; // Asegúrate de que la ruta sea correcta

class InstructionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instrucciones'),
      ),
      body: PageView(
        children: [
          InstructionPage(text: 'Aprende a sincronizar imagen y sonido'),
          InstructionPage(text: 'Los acentos en la imagen en movimiento ocurren cuando los objetos colisionan, aparecen o alcanzan un punto culminante en la narrativa visual.'),
          InstructionPage(text: 'Por otro lado, los silencios en la imagen en movimiento ocurren cuando los objetos desaparecen, salen de escena o se ocultan de alguna manera.'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Game1Page()),
          );
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}