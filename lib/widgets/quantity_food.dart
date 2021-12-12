import 'package:flutter/material.dart';
import 'package:foodie/themes.dart';

class QuantityFood extends StatelessWidget {
  final String quantity;

  QuantityFood({
    this.quantity,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(180),
        color: greenColor,
      ),
      child: Center(
        child: Text(
          quantity,
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