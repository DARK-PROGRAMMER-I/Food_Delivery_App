import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:food_delivery_app/utils/dimensions.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/icon_and_text.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  PageController pageController = PageController(viewportFraction: 0.8);
  double? pageValue = 0.0;

  @override
  void initState(){
    super.initState();
    print(Dimensions.pageWidth);
    pageController.addListener(() {
      setState(() {
        pageValue = pageController.page;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Slider Section
        Container(
          // color: Colors.red,
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context , position){
                return _buildPageItem(position);
              }),
        ),
        // Dots
        DotsIndicator(
          dotsCount: 5,
          position: pageValue!,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: Size.square(Dimensions.square8),
            activeSize: Size(Dimensions.square20, Dimensions.square10),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius10),
            )

          ),
        ),
        // polular text
        SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width20),
          child: Row(
            children: [
              BigText('Popular '),
              SizedBox(width: Dimensions.width5,),
              Container(
                  margin: EdgeInsets.only(bottom: 2),
                  child: SmallText('.' , 15, Colors.black)),
              SizedBox(width: Dimensions.width5,),
              Container(
                  margin: EdgeInsets.only(top: 2),
                  child: SmallText(' Food pricing'))
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPageItem(int index){
    double width10 = Dimensions.width10;
    return Stack(
          children: [
            Container(
                    height: Dimensions.pageViewContainer,
                    // width: 320,
                    margin: EdgeInsets.only(left: width10 , right: width10),
                    decoration: BoxDecoration(
                      color: index.isEven ? Colors.purple : Colors.indigo,
                      borderRadius: BorderRadius.circular(Dimensions.radius25),
                      image: DecorationImage(
                          image: AssetImage('assets/image/food0.png'),
                          fit: BoxFit.cover
                      )
                    ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: Dimensions.pageCommentsConatiner,
                // width: 280,
                margin: EdgeInsets.only(left: Dimensions.width30, right: Dimensions.width30, bottom: Dimensions.height30),
                decoration: BoxDecoration(
                    color: AppColors.mainWhiteColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8,
                        offset: Offset(0, 5),
                      ),
                      BoxShadow(
                        color: Colors.white,
                        // blurRadius: 5,
                        offset: Offset(5, 0)
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-5, 0)
                      ),
                    ]
                    ),
                child: Container(

                  padding: EdgeInsets.only(left: Dimensions.width15, right: Dimensions.width15, top: Dimensions.height15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText('Chinese Food'),
                      SizedBox(height: Dimensions.height20,),
                      Row(
                        children: [
                          Wrap(
                          children: List.generate(5, (index) => Icon(
                            Icons.star, color: AppColors.mainColor,size: 12,)),
                        ),
                          Wrap(
                            spacing: 5,
                            children: [
                              SizedBox(width: Dimensions.width5,),
                              SmallText('4.5', 12 ),

                              SmallText('1287  comments', 12)
                            ],
                          )

                        ],
                      ),
                      SizedBox(height: Dimensions.height15,),
                      Wrap(

                        children: [ Row(
                          children: [
                            IconAndText(
                                iconSize: 18,
                                icon: Icons.circle,
                                text: 'Normal',
                                iconColor: AppColors.yellowColor,

                            ),
                            IconAndText(
                                iconSize: 18,
                                icon: Icons.place,
                                text: '1.7km',
                                iconColor: AppColors.mainColor,

                            ),IconAndText(
                                iconSize: 18,
                                icon: Icons.timer,
                                text: '18mins',
                                iconColor: Colors.redAccent,

                            )


                          ],
                        ),
                        ],),
                    ],
                  ),
                ),
              ),
            ),

          ],);
  }

    // return Row();

}
