import 'package:bmi_calculator/models/calculate.dart';
import 'package:flutter/material.dart';

class Weight extends StatefulWidget {
  const Weight({super.key, required this.calculate});

  final Calculate calculate;

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'WEIGHT',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text(
            widget.calculate.weight.toString(),
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.calculate.weight--;
                  });
                },
                icon: const Icon(
                  Icons.remove,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.calculate.weight++;
                  });
                },
                icon: const Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
