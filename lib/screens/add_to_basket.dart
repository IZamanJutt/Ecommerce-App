import 'package:ecommerce/utills/app_layout.dart';
import 'package:ecommerce/utills/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/myWidget.dart';
import 'home_screen.dart';
import 'order_list.dart';

class AddToBasket extends StatelessWidget {
  const AddToBasket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: AppLayout.getScreenWidth(),
         // height: AppLayout.getScreenHeight(),
          alignment: Alignment.topLeft,
          color: Styles.bgColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                },
                child: Container(
                  height: AppLayout.getHeight(32),
                  width: AppLayout.getWidth(80),
                  margin: EdgeInsets.only(top: AppLayout.getHeight(50), left: AppLayout.getWidth(20)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Styles.bgColor1,
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.arrow_back_ios_sharp, color: Color(0xFF000000),),
                      Text('Go back'),
                    ],
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              const Center(
                child: Image(
                    image: AssetImage('assets/images/dish2-big.png')
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                  height: AppLayout.getHeight(175),
                  //width: AppLayout.getWidth(400),
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      color: Color(0xFFFFFFFF)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Quinoa Fruit Salad', style: Styles.headline1),
                      Gap(AppLayout.getHeight(30)),
                      const MyWidget(),
                    ],
                  )
              ),
              Container(
                height: AppLayout.getHeight(167),
                padding: EdgeInsets.all(AppLayout.getHeight(30)),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  color: const Color(0xFFFFFFFF),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'One Pack Contains:',
                      style: Styles.headline3.copyWith(color: const Color(0xFF27214D)),
                    ),
                    Gap(AppLayout.getHeight(3)),
                    Container(
                      //width: AppLayout.getWidth(175),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: const Color(0xFFFFA451))
                      ),
                    ),
                  Gap(AppLayout.getHeight(20)),
                    Text(
                      'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                      style: Styles.headline3.copyWith(fontSize: 16, color: const Color(0xFF27214D)),
                    )
                  ],
                ),
              ),
              Container(
                //width: AppLayout.getWidth(400),
                height: AppLayout.getHeight(180),
                padding: EdgeInsets.all(AppLayout.getHeight(30)),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  color: const Color(0xFFFFFFFF),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                      style: Styles.textStyle.copyWith(fontSize: 14),
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: AppLayout.getWidth(48),
                          height: AppLayout.getHeight(48),
                          margin: EdgeInsets.only(top: AppLayout.getHeight(15)),
                          decoration: const BoxDecoration(
                            color: Color(0xFFFFF7F0),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.favorite_border,
                              color: Color(0xFFFFA451),
                              size: 25,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderList(),));
                          },
                          child: Container(
                            width: AppLayout.getWidth(219),
                            height: AppLayout.getHeight(56),
                            margin: EdgeInsets.only(top: AppLayout.getHeight(10)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Styles.bgColor,
                            ),
                            child: Center(
                                child: Text('Add to basket', style: Styles.textStyle.copyWith(color: Colors.white),)
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
