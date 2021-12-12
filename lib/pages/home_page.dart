import 'package:flutter/material.dart';
import 'package:foodie/pages/detail_page.dart';
import 'package:foodie/themes.dart';
import 'package:foodie/widgets/card_food.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.menu_rounded),
                    Spacer(),
                    Image.asset(
                      'assets/images/shopping_basket.png',
                      width: 20,
                      height: 15,
                    ),
                  ],
                ),
              ),
              Container(
                  height: 50,
                  width: 315,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:30,),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: greyColor,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 12
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 18, top:30, right: 144),
                child: Text(
                  'Popular Food',
                  style: titleTextStyle,
                ),
              ),
              InkWell(
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder : (context) {
                            return DetailPage();
                          }));
                        },
                child: CardFood(
                  image: 'assets/images/pizza.png',
                  text1: 'Pizza',
                  text2: 'Delicious food 2020', 
                  text3: 'IDR 49.999',
                ),
              ),
              CardFood(
                image: 'assets/images/hamburger_1.png',
                text1: 'Hamburger',
                text2: 'Delicious food 2020', 
                text3: 'IDR 59.999',
              ),
              CardFood(
                image: 'assets/images/hotdog.png',
                text1: 'Double Hot Dog',
                text2: 'Delicious food 2020', 
                text3: 'IDR 34.999',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
