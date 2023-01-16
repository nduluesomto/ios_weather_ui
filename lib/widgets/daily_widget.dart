import 'package:flutter/material.dart';
import 'package:flutter_weather_ui/models/daily_model.dart';

class DailyWidget extends StatelessWidget {
  const DailyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: ListView.builder(
            itemCount: DailyModel.daily.length,
            itemBuilder: (context, index) {
              return Days(
                date: DailyModel.daily[index].days,
                imgData: DailyModel.daily[index].weatherIcon,
                minTemperature: DailyModel.daily[index].miniTemp,
                maxTemperature: DailyModel.daily[index].maxTemp,
              );
            }),
      ),
    );
  }
}

class Days extends StatelessWidget {
  final String date;
  final String imgData;
  final String minTemperature;
  final String maxTemperature;

  const Days({
    Key? key,
    required this.date,
    required this.imgData,
    required this.minTemperature,
    required this.maxTemperature,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: Column(
        children: [
          Row(
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
          ),
          const SizedBox(height: 5),
          Divider(color: Colors.grey.shade400),
        ],
      ),
    );
  }
}
