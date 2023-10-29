import 'package:flutter/material.dart';
import 'package:pro_portfolio/Web_Screen/web_application_rows.dart';
import 'package:pro_portfolio/Web_Screen/web_bottom_home_page_container.dart';
import 'package:pro_portfolio/colors.dart';
import 'package:pro_portfolio/Mobile_Screen/row/application_rows.dart';
import 'package:pro_portfolio/Mobile_Screen/row/container_row1.dart';
import '../Mobile_Screen/bottom_home_container.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/wallpaper2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    WebApplicationRows(),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              WebBottomHomePageContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
