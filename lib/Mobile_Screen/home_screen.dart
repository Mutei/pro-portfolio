import 'package:flutter/material.dart';
import 'package:pro_portfolio/colors.dart';
import 'package:pro_portfolio/Mobile_Screen/row/application_rows.dart';
import 'package:pro_portfolio/Mobile_Screen/row/container_row1.dart';

import 'bottom_home_container.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({
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
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 250,
                    decoration: const BoxDecoration(
                      color: kContainerClockColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ContainerRow1(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ApplicationRows(),
                  const SizedBox(
                    height: 300,
                  ),
                  const BottomHomePageContainer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
