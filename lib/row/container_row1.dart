import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'package:pro_portfolio/colors.dart';

class ContainerRow1 extends StatefulWidget {
  const ContainerRow1({super.key});

  @override
  State<ContainerRow1> createState() => _ContainerRow1State();
}

class _ContainerRow1State extends State<ContainerRow1> {
  late String formattedTime;
  late String formattedDate;
  late String formattedDay;

  @override
  void initState() {
    super.initState();
    _updateTime();
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      _updateTime();
    });
  }

  void _updateTime() {
    final now = DateTime.now();
    formattedTime = _formatTime(now);
    formattedDate = _formatDate(now);
    formattedDay = _formatDay(now);
    setState(() {}); // Update the UI
  }

  String _formatTime(DateTime time) {
    return DateFormat.Hms().format(time);
  }

  String _formatDate(DateTime date) {
    return DateFormat.yMMMMd().format(date);
  }

  String _formatDay(DateTime date) {
    return DateFormat.EEEE().format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Text(
            formattedTime,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: kClockTextColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(left: 35),
            child: Row(
              children: [
                Text(
                  '$formattedDay/',
                  style: const TextStyle(
                    fontSize: 15,
                    color: kClockTextColor,
                  ),
                ),
                Text(
                  formattedDate,
                  style: const TextStyle(
                    fontSize: 15,
                    color: kClockTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
