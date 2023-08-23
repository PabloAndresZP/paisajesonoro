import 'package:flutter/material.dart';
import 'package:application_1/src/widgets/coin_counter.dart';
import 'package:application_1/src/widgets/progress_indicator_bar.dart';
import 'package:application_1/src/widgets/hearts_indicator.dart';

class InstructionPage extends StatelessWidget {
  final String text;

  const InstructionPage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Game1Page()),
                );
              },
              child: Text('Ir al juego'),
            ),
          ],
        ),
      ),
    );
  }
}

class Game1Page extends StatefulWidget {
  @override
  _Game1PageState createState() => _Game1PageState();
}

class _Game1PageState extends State<Game1Page> {
  int coinCount = 0;
  int currentStep = 0;
  int totalSteps = 5;
  int heartCount = 3;

  List<String> exerciseGrid = List.filled(4, '');

  void updateExerciseGrid(String buttonText) {
    for (int i = 0; i < exerciseGrid.length; i++) {
      if (exerciseGrid[i] == '') {
        exerciseGrid[i] = buttonText;
        break;
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game 1'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CoinCounter(coinCount),
              ProgressIndicatorBar(currentStep, totalSteps),
              HeartsIndicator(heartCount),
            ],
          ),
          SizedBox(height: 20),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('¿Identificas los acentos y los silencios?'),
                SizedBox(height: 20),
                ExerciseGrid(exerciseGrid),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DraggableButton('Acento', updateExerciseGrid),
                    DraggableButton('Silencio', updateExerciseGrid),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExerciseGrid extends StatelessWidget {
  final List<String> exerciseGrid;

  const ExerciseGrid(this.exerciseGrid);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < 4; i++)
          Container(
            width: 50,
            height: 50,
            color: exerciseGrid[i] == '' ? Colors.grey : Colors.green,
            child: Center(
              child: Text(
                exerciseGrid[i] != '' ? exerciseGrid[i] : (i + 1).toString(),
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
      ],
    );
  }
}

class DraggableButton extends StatelessWidget {
  final String buttonText;
  final Function(String) onDrop;

  const DraggableButton(this.buttonText, this.onDrop);

  @override
  Widget build(BuildContext context) {
    return Draggable<String>(
      data: buttonText,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(
          primary: buttonText == 'Acento' ? Colors.blue : Colors.red,
        ),
      ),
      feedback: ElevatedButton(
        onPressed: () {},
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(
          primary: buttonText == 'Acento' ? Colors.blue : Colors.red,
        ),
      ),
      onDragCompleted: () {
        onDrop(buttonText);
      },
    );
  }
}