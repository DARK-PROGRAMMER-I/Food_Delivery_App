import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';

class BigText extends StatelessWidget {
  String name;
  Color color ;
  double size = 20;
  BigText(this.name , [this.color = const Color(0xFF424242),this.size = 20]);

  @override
  Widget build(BuildContext context) {
    return Text(
      name ,
      maxLines: 1,
      style: TextStyle(fontSize: size ,color: color , fontFamily: 'Roboto', fontWeight: FontWeight.w400 )
    );
  }
}
