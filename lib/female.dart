import 'package:bmi_calculator/models/calculate.dart';
import 'package:flutter/material.dart';

class Female extends StatefulWidget {
  const Female(
      {super.key, required this.calculate, required this.switchedGender});

  final Calculate calculate;
  final void Function(bool) switchedGender;

  @override
  State<Female> createState() => _FemaleState();
}

class _FemaleState extends State<Female> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.switchedGender(false);
      },
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: widget.calculate.isMale
              ? Theme.of(context).primaryColor
              : const Color(0xFFe84393),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.female,
              size: 80,
              color: Colors.white,
            ),
            Text(
              'FEMALE',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ),
    );
  }
}
