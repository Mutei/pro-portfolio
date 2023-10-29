import 'package:flutter/material.dart';
import 'package:pro_portfolio/Mobile_Screen/home_screen.dart';
import 'Web_Screen/web_home_screen.dart';
import 'responsive_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Portfolio",
      home: ResponsiveLayoutScreen(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
