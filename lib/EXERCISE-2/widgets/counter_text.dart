import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/color_counters.dart';

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorCounters>(
      builder: (context, colorCounters, child) {
        return Column(
          children: [
            Text(
              'Red Taps: ${colorCounters.redCount}',
              style: const TextStyle(fontSize: 20, color: Colors.red),
            ),
            Text(
              'Blue Taps: ${colorCounters.blueCount}',
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        );
      },
    );
  }
}
