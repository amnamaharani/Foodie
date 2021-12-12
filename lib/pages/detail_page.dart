import 'package:flutter/material.dart';
import 'package:foodie/themes.dart';
import 'package:foodie/widgets/quantity_food.dart';
import 'package:foodie/widgets/size_food.dart';


class DetailPage extends StatelessWidget{

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
                              index: 0,
                              size: 'S'),
                          SizedBox(width:20),
                          SizeFood(
                              index: 1,
                              size: 'M'),
                          SizedBox(width:20),
                          SizeFood(
                              index: 2,
                              size: 'L'),
                        ],
                      ),
                    ),
                    SizedBox(height: 40,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Quantity',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: blackColor
                          ),
                        ),
                        SizedBox(height:4,),
                        Row(
                          children: <Widget>[
                            QuantityFood(
                              quantity: '-',
                            ),
                            SizedBox(width:16,),
                            Text(
                              '2',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 16,),
                            QuantityFood(
                              quantity: '+',
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 40,),
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Price',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: greyColor,
                              ),
                            ),
                            SizedBox(height: 9,),
                            Text(
                              'IDR 49.999',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: blackColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 89,),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(180),
                            color: containerColor,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              size: 20,
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(180),
                          color: greenColor,
                        ),
                        child: Center(
                          child: Image.asset(
                              'assets/images/shopping_basket.png',
                              height: 18,
                              width: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
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
