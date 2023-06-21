import 'dart:math';

import 'package:bmi_calculator/models/calculate.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.calculate, required this.restart});

  final Calculate calculate;
  final void Function() restart;

  @override
  Widget build(BuildContext context) {
    final double getBMI =
        (calculate.weight) / (pow((calculate.height / 100), 2));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF2B2B2B),
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          // borderRadius: BorderRadius.circular(
          // 10,
          // ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your BMI is: ',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                getBMI.toStringAsFixed(2),
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton.icon(
                  onPressed: restart,
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFFe17055),
                    alignment: Alignment.center,
                  ),
                  icon: const Icon(
                    Icons.refresh,
                    color: Colors.white,
                  ),
                  label: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Calculate Again',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
