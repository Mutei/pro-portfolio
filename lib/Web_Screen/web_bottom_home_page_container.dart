import 'package:flutter/material.dart';
import 'package:pro_portfolio/colors.dart';
import 'package:pro_portfolio/Mobile_Screen/row/bottom_row.dart';

class WebBottomHomePageContainer extends StatelessWidget {
  const WebBottomHomePageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 350,
      decoration: const BoxDecoration(
        color: kContainerClockColor,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 10),
        child: BottomRow(),
      ),
    );
  }
}
