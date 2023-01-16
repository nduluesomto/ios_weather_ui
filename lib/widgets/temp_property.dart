import 'package:flutter/material.dart';

class PropertyTemp extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final String percentageOne;
  final String percentageTwo;
  const PropertyTemp(
      {Key? key,
      required this.textOne,
      required this.percentageOne,
      required this.textTwo,
      required this.percentageTwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(textOne,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
        Text("$percentageOne%",
            style: TextStyle(
                color: Colors.grey.shade500, fontWeight: FontWeight.w700)),
        Text(textTwo,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
        Text(percentageTwo,
            style: TextStyle(
                color: Colors.grey.shade500, fontWeight: FontWeight.w700)),
      ],
    );
  }
}
