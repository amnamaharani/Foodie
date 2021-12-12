import 'package:flutter/material.dart';
import 'package:foodie/themes.dart';
import 'package:foodie/widgets/size_food.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios_rounded),
                    Spacer(),
                    Icon(Icons.menu),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Steak House',
                    style: titleTextStyle,
                  ),
                  SizedBox(height: 4,),
                  Text(
                    'Our very own! Smashed \nbeef burgers',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: greyColor,
                    ),
                  ),
                  SizedBox(height: 50,),
                  Image.asset(
                    'assets/images/hamburger_2.png',
                    height: 216,
                    width: 315,
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left:30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Size:',
                      style: TextStyle(
                        fontFamily: 'Poppins', 
                        fontWeight: FontWeight.w500, 
                        fontSize: 14, 
                        color: Color(0xff202020),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizeFood(
                            size: 'S',
                          ),
                          SizedBox(width:20),
                          SizeFood(
                            size: 'M',
                          ),
                          SizedBox(width:20),
                          SizeFood(
                            size: 'L',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
