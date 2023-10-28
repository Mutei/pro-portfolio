import 'package:flutter/material.dart';

class ReusedButtonPadding extends StatelessWidget {
  final String pic;
  final String title;
  final double size;

  const ReusedButtonPadding({
    Key? key,
    required this.pic,
    required this.title,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            pic,
            height: size,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
