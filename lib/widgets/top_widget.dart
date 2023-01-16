import 'package:flutter/material.dart';
import 'package:flutter_weather_ui/views/weekly_view.dart';
import 'package:flutter_weather_ui/widgets/header.dart';
import 'package:get/get.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 60),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: height * 0.41,
      width: width,
      //decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          HeaderWidget(
            cityTextColor: Colors.white,
            countryTextColor: Colors.grey.shade400,
            iconColor: Colors.white,
          ),
          const SizedBox(height: 30),
          const Text('Today',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          const Text('Wed, 3 Dec', style: TextStyle(color: Colors.white)),
          const SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text('-1', style: TextStyle(fontSize: 75, color: Colors.white)),
            Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Text('°c',
                    style: TextStyle(color: Colors.white, fontSize: 30))),
          ]),
          const SizedBox(height: 10),
          Text('Feels like -3°',
              style: TextStyle(color: Colors.grey.shade300, fontSize: 16)),
          const SizedBox(height: 23),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                const Text('Today',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
                const SizedBox(width: 20),
                Text('Tomorrow',
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 15,
                        fontWeight: FontWeight.w500))
              ],
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => WeeklyWidget());
              },
              child: Text('Next 7 days',
                  style: TextStyle(
                      color: Colors.blue.shade200,
                      fontSize: 15,
                      fontWeight: FontWeight.w500)),
            ),
          ]),
        ],
      ),
    );
  }
}
