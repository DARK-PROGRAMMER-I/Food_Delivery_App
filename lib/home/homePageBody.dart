import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/widgets/big_text.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 320,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context , position){
        return _buildPageItem(position);
      }),
    );
  }

  Widget _buildPageItem(int index){
    return Stack(
          children: [
            Align(
              child: Container(
                      height: 220,
                      width: 320,
                      margin: EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                        color: index.isEven ? Colors.purple : Colors.indigo,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage('assets/image/food0.png'),
                            fit: BoxFit.cover
                        )
                      ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 120,
                width: 280,
                margin: EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                    color: AppColors.mainWhiteColor,
                    borderRadius: BorderRadius.circular(30),
                    ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      alignment: Alignment.topLeft,
                        child: BigText('Chinese Food')),
                    Row(
                      children: [

                      ],
                    ),
                    Row()
                  ],
                ),
              ),
            ),

          ],);
  }

    // return Row();

}
