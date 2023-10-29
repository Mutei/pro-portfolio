import 'package:flutter/material.dart';
import 'package:pro_portfolio/profile/facebook.dart';
import 'package:pro_portfolio/profile/github.dart';
import 'package:pro_portfolio/profile/linkedin.dart';
import 'package:pro_portfolio/profile/resumee.dart';
import 'package:pro_portfolio/profile/whatsapp.dart';
import '../Mobile_Screen/reused_button_padding.dart';

class WebApplicationRows extends StatelessWidget {
  const WebApplicationRows({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Facebook facebook = Facebook();
    LinkedIn linkedIn = LinkedIn();
    GitHub gitHub = GitHub();
    Resumee resume = Resumee();
    WhatsApp whatsApp = WhatsApp();
    return Column(
      children: [
        TextButton(
          onPressed: () {
            gitHub.launch();
          },
          child: const ReusedButtonPadding(
            pic: "images/flutter2.png",
            title: "Projects",
            size: 50,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        TextButton(
          onPressed: () {
            resume.launch();
          },
          child: const ReusedButtonPadding(
            pic: "images/pdf.jpg",
            title: "Resumee",
            size: 50,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        TextButton(
          onPressed: () {
            gitHub.launch();
          },
          child: const ReusedButtonPadding(
            pic: "images/github.png",
            title: "Github",
            size: 50,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        TextButton(
          onPressed: () {
            linkedIn.launch();
          },
          child: const ReusedButtonPadding(
            pic: "images/linkedin.png",
            title: "LinkedIN",
            size: 50,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        TextButton(
          onPressed: () {
            facebook.launch();
          },
          child: const ReusedButtonPadding(
            pic: "images/facebook.png",
            title: "FaceBook",
            size: 50,
          ),
        ),
      ],
    );
  }
}
