import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderWidget extends StatelessWidget {
  final Color cityTextColor;
  final Color countryTextColor;
  final Color iconColor;
  final IconData? iconReturn;
  const HeaderWidget(
      {Key? key,
      required this.cityTextColor,
      required this.countryTextColor,
      required this.iconColor,
      this.iconReturn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(iconReturn)),
      Row(children: [
        Text('St. Petersburg,',
            style: TextStyle(
                color: cityTextColor,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        Text(' Russia',
            style: TextStyle(color: countryTextColor, fontSize: 18)),
      ]),
      Icon(Icons.menu, color: iconColor, size: 28),
    ]);
  }
}
