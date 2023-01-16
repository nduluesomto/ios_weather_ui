import 'package:flutter/material.dart';

import 'footer_subwidget.dart';

class BottomDetails extends StatelessWidget {
  const BottomDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
        width: width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          children: [
            SubFooter(
                txtHead: 'SUNRISE',
                txtSecond: 'SUNSET',
                firstTime: '7:38am',
                secondTime: '3:55pm'),
            Divider(thickness: 1, color: Colors.grey.shade300),
            SubFooter(
                txtHead: 'PRECIPITATION',
                txtSecond: 'HUMIDITY',
                firstTime: '90%',
                secondTime: '77%'),
            Divider(thickness: 1, color: Colors.grey.shade300),
            SubFooter(
                txtHead: 'WIND',
                txtSecond: 'PRESSURE',
                firstTime: '11 km/h',
                secondTime: '1015 hPa'),
          ],
        ),
      ),
    );
  }
}
