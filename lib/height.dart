import 'package:bmi_calculator/models/calculate.dart';
import 'package:flutter/material.dart';

class Height extends StatefulWidget {
  const Height({super.key, required this.calculate});

  final Calculate calculate;

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'HEIGHT',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              '${widget.calculate.height.toInt()} cm',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 20),
            Slider(
              value: widget.calculate.height,
              min: 100.0,
              max: 300.0,
              divisions: 90,
              activeColor: Colors.white, // Set the color of the active track
              inactiveColor: const Color.fromARGB(83, 158, 158, 158),
              onChanged: (double value) {
                setState(
                  () {
                    widget.calculate.height = value;
                  },
                );
              },
            ),
          ]),
    );
  }
}
