import 'package:flutter/material.dart';

class HeartsIndicator extends StatelessWidget {
  final int hearts;

  HeartsIndicator(this.hearts);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(hearts, (index) {
        return Icon(Icons.favorite, color: Colors.red);
      }),
    );
  }
}