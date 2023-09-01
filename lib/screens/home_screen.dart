import 'package:ecommerce/utills/app_layout.dart';
import 'package:ecommerce/utills/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'add_to_basket.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: AppLayout.getWidth(10), right: AppLayout.getWidth(20), top: AppLayout.getHeight(70)),
          color: Styles.bgColor1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Image(image: AssetImage('assets/images/menu.png')),
                  Column(
                    children: [
                      const Image(image: AssetImage('assets/images/shop-basket.png')),
                      Gap(AppLayout.getHeight(5)),
                      Text('My basket', style: Styles.textStyle.copyWith(fontSize: 10),)
                    ],
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(right: AppLayout.getWidth(150)),
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hello Tony,',
                          style: Styles.textStyle,
                        ),
                        TextSpan(
                          text: ' What fruit salad\n combo do you want today?',
                          style: Styles.textStyle.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ]
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(40)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: AppLayout.getWidth(310),
                    height: AppLayout.getHeight(56),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade300
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFF86869E),
                        ),
                        hintText: 'Search for fruit salad combos',
                        border: InputBorder.none,
                        labelStyle:  TextStyle(
                          color: Color(0xFFC2BDBD),
                          fontFamily: 'Alata',
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  const Image(image: AssetImage('assets/images/filter.png'))
                ],
              ),
              Gap(AppLayout.getHeight(40)),
              Text(
                'Recommended Combo',
                style: Styles.headline2,
              ),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: AppLayout.getWidth(152),
                    height: AppLayout.getHeight(190),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFFFFFFF)
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          child: const Image(
                            image: AssetImage('assets/images/heart.png'),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: const Image(
                            image: AssetImage('assets/images/dish.png'),
                          ),
                        ),
                        Gap(AppLayout.getHeight(10)),
                        Text(
                            'Honey lime combo',
                            style: Styles.textStyle.copyWith(fontSize: 13, fontWeight: FontWeight.w500 )
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '₦ 2,000',
                              style: Styles.textStyle.copyWith(color: const Color(0xFFF08626)),
                            ),
                            const Image(
                              image: AssetImage('assets/images/add.png'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 152,
                    height: 190,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFFFFFFF)
                    ),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          child: const Image(
                            image: AssetImage('assets/images/heart.png'),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: const Image(
                            image: AssetImage('assets/images/dish1.png'),
                          ),
                        ),
                        const Gap(10),
                        Text(
                            'Berry mango combo',
                            style: Styles.textStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w500 )
                        ),
                        const Gap(5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '₦ 8,000',
                              style: Styles.textStyle.copyWith(color: const Color(0xFFF08626)),
                            ),
                            const Image(
                              image: AssetImage('assets/images/add.png'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Hottest',
                        style: Styles.headline3.copyWith(color: const Color(0xFF27214D)
                        ),
                      ),
                      Gap(AppLayout.getHeight(2)),
                      Container(
                        //padding: EdgeInsets.only(right: AppLayout.getWidth(20)),
                        width: AppLayout.getWidth(22),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: const Color(0xFFFFA451))
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Popular',
                    style: Styles.textStyle.copyWith(color: const Color(0xFF938DB5)),
                  ),
                  Text(
                    'New combo',
                    style: Styles.textStyle.copyWith(color: const Color(0xFF938DB5)),
                  ),
                  Text(
                    'Top',
                    style: Styles.textStyle.copyWith(color: const Color(0xFF938DB5)),
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(20)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const AddToBasket(),));
                      },
                      child: Container(
                        width: AppLayout.getWidth(140),
                        height: AppLayout.getHeight(150),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFFFFAEB)
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: const Image(
                                image: AssetImage('assets/images/heart.png'),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Image(
                                image: AssetImage('assets/images/dish2.png'),
                              ),
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                                'Quinoa fruit salad',
                                style: Styles.textStyle.copyWith(fontSize: 13, fontWeight: FontWeight.w500 )
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '₦ 2,000',
                                  style: Styles.textStyle.copyWith(color: const Color(0xFFF08626)),
                                ),
                                const Image(
                                  image: AssetImage('assets/images/add.png'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(10)),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const AddToBasket(),));
                      },
                      child: Container(
                        width: AppLayout.getWidth(140),
                        height: AppLayout.getHeight(150),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFFEF0F0)
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: const Image(
                                image: AssetImage('assets/images/heart.png'),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Image(
                                image: AssetImage('assets/images/dish3.png'),
                              ),
                            ),
                            Gap(AppLayout.getHeight(18)),
                            Text(
                                'Tropical fruit salad',
                                style: Styles.textStyle.copyWith(fontSize: 13, fontWeight: FontWeight.w500 )
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '₦ 2,000',
                                  style: Styles.textStyle.copyWith(color: const Color(0xFFF08626)),
                                ),
                                const Image(
                                  image: AssetImage('assets/images/add.png'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(10)),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const AddToBasket(),));
                      },
                      child: Container(
                        width: AppLayout.getWidth(140),
                        height: AppLayout.getHeight(150),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFF1EFF6)
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: const Image(
                                image: AssetImage('assets/images/heart.png'),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Image(
                                image: AssetImage('assets/images/dish2.png'),
                              ),
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                                'Melon fruit salad',
                                style: Styles.textStyle.copyWith(fontSize: 13, fontWeight: FontWeight.w500 )
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '₦ 2,000',
                                  style: Styles.textStyle.copyWith(color: const Color(0xFFF08626)),
                                ),
                                const Image(
                                  image: AssetImage('assets/images/add.png'),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}