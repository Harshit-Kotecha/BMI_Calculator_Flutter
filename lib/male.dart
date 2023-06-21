import 'package:bmi_calculator/models/calculate.dart';
import 'package:flutter/material.dart';

class Male extends StatefulWidget {
  const Male({super.key, required this.calculate, required this.switchedGender});

  final Calculate calculate;
  final void Function(bool) switchedGender;

  @override
  State<Male> createState() => _MaleState();
}

class _MaleState extends State<Male> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.switchedGender(true);
      },
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: widget.calculate.isMale
              ? const Color(0xFF6c5ce7)
              : Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.male,
              size: 80,
              color: Colors.white,
            ),
            Text(
              'MALE',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ),
    );
  }
}
