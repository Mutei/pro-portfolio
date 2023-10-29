import 'package:flutter/material.dart';

class ReusedButtonPhonePadding extends StatelessWidget {
  final String pic;
  final double size;
  const ReusedButtonPhonePadding(
      {super.key, required this.pic, required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        children: [
          Image.asset(
            pic,
            height: size,
            color: Colors.green,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
