import 'package:flutter/material.dart';
import 'package:flutter_weather_ui/widgets/temp_property.dart';
import 'package:flutter_weather_ui/widgets/weekly_days_widget.dart';

import 'header.dart';

class WeeklyTopWidget extends StatelessWidget {
  const WeeklyTopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(
              iconReturn: Icons.arrow_back_ios_outlined,
              cityTextColor: Colors.black,
              countryTextColor: Colors.grey.shade900,
              iconColor: Colors.black),
          const SizedBox(height: 40),
          Text('Next 7 days',
              style: TextStyle(
                  color: Colors.grey.shade900,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          const SizedBox(height: 40),
          const WeekDailyWidget(
              date: 'Thursday, 12 Jan',
              imgData: 'lib/images/snow.png',
              minTemperature: '-1',
              maxTemperature: '-5'),
          const SizedBox(height: 15),
          const Divider(thickness: 1),
          const SizedBox(height: 20),
          const PropertyTemp(
              textOne: 'Precipitation',
              percentageOne: '65',
              textTwo: 'Wind',
              percentageTwo: '8km/h'),
          const SizedBox(height: 20),
          const PropertyTemp(
              textOne: 'Humidity',
              percentageOne: '65',
              textTwo: 'Pressure',
              percentageTwo: '8km/h'),
        ],
      ),
    );
  }
}
