import 'package:flutter/material.dart';

class HeadWidget extends StatelessWidget {
  final Widget body;
  const HeadWidget({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xFF2B32B2),
            Color(0xFF1488CC),
          ],
          stops: [0.3, 0.75],
        ),
      ),
      child: this.body,
    );
  }
}
