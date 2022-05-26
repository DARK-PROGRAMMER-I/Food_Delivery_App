import 'package:flutter/material.dart';
import 'package:food_delivery_app/home/homePageBody.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class FoodHomePage extends StatefulWidget {
  const FoodHomePage({Key? key}) : super(key: key);

  @override
  _FoodHomePageState createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText( 'Pakistan', AppColors.mainColor),

                        Row(
                          children: [
                            SmallText('Islamabad', Colors.black54),
                            IconButton(
                              // iconSize: 20,
                                splashColor: AppColors.mainWhiteColor,
                                onPressed: (){},
                                icon: Icon(Icons.arrow_drop_down))
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(15)

                      ),
                      child: Center(
                        child: IconButton(
                          splashColor: AppColors.whiteColor,
                          icon: Icon(Icons.search , color: AppColors.whiteColor,),
                          onPressed: (){},
                        ),
                      ),

                    )
                  ],
                ),
              ),
            ),
            HomePageBody()

          ],
        ),
      ),
    );
  }
}
