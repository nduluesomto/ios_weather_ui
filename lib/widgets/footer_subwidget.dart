import 'package:flutter/material.dart';

class SubFooter extends StatelessWidget {
  final String txtHead;
  final String txtSecond;
  final String firstTime;
  final String secondTime;

  const SubFooter(
      {Key? key,
      required this.txtHead,
      required this.txtSecond,
      required this.firstTime,
      required this.secondTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 60, bottom: 10, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(txtHead,
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 10,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Text(firstTime,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20))
          ]),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(txtSecond,
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 10,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Text(secondTime,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20))
          ])
        ],
      ),
    );
  }
}
