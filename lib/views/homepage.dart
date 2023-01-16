import 'package:flutter/material.dart';
import 'package:flutter_weather_ui/widgets/hourly_widget.dart';
import 'package:flutter_weather_ui/widgets/top_widget.dart';

import '../widgets/bottom_details_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "lib/images/background.jpg",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Column(
            children: const [
              TopWidget(),
              Divider(height: 1, color: Colors.white),
              SizedBox(height: 15),
              HourlyWidget(),
              SizedBox(height: 10),
              BottomDetails(),
            ],
          ),
        ],
      ),
    );
  }
}
