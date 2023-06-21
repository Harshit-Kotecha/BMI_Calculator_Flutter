import 'package:bmi_calculator/age.dart';
import 'package:bmi_calculator/female.dart';
import 'package:bmi_calculator/height.dart';
import 'package:bmi_calculator/male.dart';
import 'package:bmi_calculator/models/calculate.dart';
import 'package:bmi_calculator/weight.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(this.switchScreen, {super.key});

  final void Function(Calculate) switchScreen;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Calculate calculate =
      Calculate(isMale: true, age: 18, weight: 40, height: 173);

  void switchedGender(bool checkGender) {
    setState(() {
      calculate.isMale = checkGender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: const Color(0xFF2B2B2B),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Male(
                    calculate: calculate,
                    switchedGender: switchedGender,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Female(
                    calculate: calculate,
                    switchedGender: switchedGender,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Height(
                calculate: calculate,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Weight(
                    calculate: calculate,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Age(
                    calculate: calculate,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 40,
                child: TextButton(
                  onPressed: () {
                    widget.switchScreen(calculate);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFe17055),
                    alignment: Alignment.center,
                  ),
                  child: Text(
                    'CALCULATE',
                    style: Theme.of(context).textTheme.displayMedium,
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
