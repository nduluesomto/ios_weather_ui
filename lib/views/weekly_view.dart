import 'package:flutter/material.dart';

import '../widgets/daily_widget.dart';
import '../widgets/weekly_top_widget.dart';

class WeeklyWidget extends StatelessWidget {
  const WeeklyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          WeeklyTopWidget(),
          DailyWidget(),
        ],
      ),
    ));
  }
}
