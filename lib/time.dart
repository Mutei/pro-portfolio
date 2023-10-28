import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

void main() {
  runApp(ClockApp());
}

class ClockApp extends StatefulWidget {
  const ClockApp({super.key});

  @override
  State<ClockApp> createState() => _ClockAppState();
}

class _ClockAppState extends State<ClockApp> {
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Current Time & Date'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                formattedTime,
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                formattedDay,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Text(
                formattedDate,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
