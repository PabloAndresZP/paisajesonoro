import 'package:flutter/material.dart';

class ProgressIndicatorBar extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  ProgressIndicatorBar(this.currentStep, this.totalSteps);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(totalSteps, (index) {
        return Icon(
          index < currentStep ? Icons.check_circle : Icons.circle,
          color: index < currentStep ? Colors.green : Colors.grey,
        );
      }),
    );
  }
}