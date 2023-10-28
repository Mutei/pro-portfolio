import 'package:flutter/material.dart';
import 'package:pro_portfolio/profile/gmail.dart';
import 'package:pro_portfolio/profile/phone.dart';
import 'package:pro_portfolio/reused_button__phone_padding.dart';

import '../profile/links.dart';
import '../reused_button__bottom_padding.dart';

class BottomRow extends StatelessWidget {
  const BottomRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Phone phone = Phone();
    Email email = Email();
    Chrome chrome = Chrome();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            phone.launch();
          },
          child: const ReusedButtonPhonePadding(
            pic: "images/phone.png",
            size: 50,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: () {
            chrome.launch();
          },
          child: const ReusedButtonBottomPadding(
            pic: "images/chrome.png",
            size: 50,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            email.launch();
          },
          child: const ReusedButtonBottomPadding(
            pic: "images/gmail.png",
            size: 50,
          ),
        ),
      ],
    );
  }
}
