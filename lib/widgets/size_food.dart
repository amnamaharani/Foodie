import 'package:flutter/material.dart';
import 'package:foodie/themes.dart';

class SizeFood extends StatelessWidget {
  final String size;

  SizeFood({
    this.size,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(180),
        color: greenColor,
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}