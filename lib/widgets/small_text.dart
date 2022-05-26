import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';

class SmallText extends StatelessWidget {
  String name;
  Color color ;
  double size = 20;
  double height;
  SmallText(this.name , [ this.color =const Color(0xFFccc7c5) ,this.size = 15, this.height = 1.2]);
  TextOverflow overflow = TextOverflow.ellipsis;
  @override
  Widget build(BuildContext context) {
    return Text(
      name ,
      style: TextStyle(fontSize: size ,color: color , fontFamily: 'Roboto', height: height ),
      overflow: overflow,
    );
  }
}
