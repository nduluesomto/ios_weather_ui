import 'package:flutter/material.dart';

class WeekDailyWidget extends StatelessWidget {
  final String date;
  final String imgData;
  final String minTemperature;
  final String maxTemperature;

  const WeekDailyWidget({
    Key? key,
    required this.date,
    required this.imgData,
    required this.minTemperature,
    required this.maxTemperature,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Image.asset(imgData, width: 30),
          const SizedBox(width: 20),
          Text(date,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600))
        ]),
        Row(children: [
          Text(minTemperature,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600)),
          const SizedBox(width: 20),
          Text(maxTemperature,
              style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 20,
                  fontWeight: FontWeight.w600)),
        ]),
      ],
    );
  }
}
