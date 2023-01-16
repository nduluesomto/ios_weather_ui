import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/app_controller.dart';
import '../models/hourly_model.dart';

class HourlyWidget extends StatelessWidget {
  const HourlyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());
    return Container(
      padding: const EdgeInsets.only(left: 10),
      height: 110,
      //color: Colors.white,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: HourlyModel.hourly.length,
          itemBuilder: (context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: GestureDetector(
                  onTap: () {
                    appController.activeIndex(index);
                  },
                  child: Obx(
                    () => Column(
                      children: [
                        Text(
                          HourlyModel.hourly[index].hour.toString(),
                          style: TextStyle(
                              color: appController.selectedIndex == index
                                  ? Colors.white
                                  : Colors.grey.shade400),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          padding: const EdgeInsets.only(
                              top: 15, bottom: 15, right: 12, left: 12),
                          decoration: BoxDecoration(
                              color: appController.selectedIndex == index
                                  ? Colors.white
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: appController.selectedIndex == index
                                      ? Colors.white
                                      : Colors.grey.shade100)),
                          child: Column(
                            children: [
                              Image.asset(
                                HourlyModel.hourly[index].weatherIcon,
                                height: 20,
                                width: 20,
                                color: appController.selectedIndex == index
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              const SizedBox(height: 15),
                              Text(
                                HourlyModel.hourly[index].weatherDegree,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: appController.selectedIndex == index
                                        ? Colors.black
                                        : Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            );
          }),
    );
  }
}
