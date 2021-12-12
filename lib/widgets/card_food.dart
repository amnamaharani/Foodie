import 'package:flutter/material.dart';
import 'package:foodie/themes.dart';

class CardFood extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String text3;

  CardFood({
    this.image,
    this.text1,
    this.text2,
    this.text3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: 20,
      ),
      child: Container(
        width: 315,
        height: 120,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 18, top: 25, bottom: 25),
              child: Image.asset(
                image,
                height: 70,
                width: 68,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    text1,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: blackColor,
                    ),
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: greyColor,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    text3,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: blackColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 15,
                right: 15,
                left: 40,
                top: 69,
              ),
              child: Icon(
                Icons.add_circle_rounded,
                color: greenColor,
                size: 36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
