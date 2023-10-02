import 'package:flutter/material.dart';

class DetailsRow extends StatelessWidget {
  const DetailsRow({super.key, required this.lable, required this.value});
  final String lable;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          lable,
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(width: 40),
        Text(
          value,
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
