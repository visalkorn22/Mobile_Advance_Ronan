import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/color_counters.dart';

class ColorButtons extends StatelessWidget {
  const ColorButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Provider.of<ColorCounters>(context, listen: false).incrementRed();
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: const Text("Tap Red"),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
            Provider.of<ColorCounters>(context, listen: false).incrementBlue();
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          child: const Text("Tap Blue"),
        ),
      ],
    );
  }
}
