import 'package:flutter/material.dart';

class ReusedButtonBottomPadding extends StatelessWidget {
  final String pic;
  final double size;
  const ReusedButtonBottomPadding(
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
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
