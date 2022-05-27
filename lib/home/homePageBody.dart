import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  PageController pageController = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 320,
      child: PageView.builder(
        controller: pageController,
          itemCount: 5,
          itemBuilder: (context , position){
        return _buildPageItem(position);
      }),
    );
  }

  Widget _buildPageItem(int index){
    return Stack(
          children: [
            Container(
                    height: 220,
                    // width: 320,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: index.isEven ? Colors.purple : Colors.indigo,
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: AssetImage('assets/image/food0.png'),
                          fit: BoxFit.cover
                      )
                    ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 120,
                // width: 280,
                margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                decoration: BoxDecoration(
                    color: AppColors.mainWhiteColor,
                    borderRadius: BorderRadius.circular(25),

                    ),
                child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText('Chinese Food'),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Wrap(
                          children: List.generate(5, (index) => Icon(
                            Icons.star, color: AppColors.mainColor,size: 12,)),
                        ),
                          Wrap(
                            spacing: 5,
                            children: [

                              SmallText('4.5', ),

                              SmallText('1287  comments')
                            ],
                          )

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],);
  }

    // return Row();

}
