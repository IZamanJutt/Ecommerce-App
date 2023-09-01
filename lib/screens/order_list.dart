import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:ecommerce/screens/add_to_basket.dart';
import 'package:ecommerce/screens/order_complete.dart';
import 'package:ecommerce/utills/app_layout.dart';
import 'package:ecommerce/widgets/btn_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utills/app_styles.dart';
import '../widgets/custom_bottom_sheet.dart';
import '../widgets/custom_text_field.dart';

class OrderList extends StatelessWidget {
  const OrderList({Key? key}) : super(key: key);
  void _showBottomSheet(BuildContext context) {
    showFlexibleBottomSheet<void>(
      minHeight: 100,
      initHeight: 0.5,
      maxHeight: 1,
      context: context,
      builder: (BuildContext context, ScrollController scrollController, double bottomSheetOffset) {
        return SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
              color:  Color(0xFFFFFFFF),
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(); // Close the bottom sheet
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: const Icon(Icons.close, color: Color(0xFF070648),),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Delivery address', style: Styles.headline3),
                      Gap(AppLayout.getHeight(15)),
                      const CustomTextField(hintText: "10th avenue, Lekki, Lagos State"),
                      Gap(AppLayout.getHeight(15)),
                      Text('Number we can call', style: Styles.headline3),
                      Gap(AppLayout.getHeight(15)),
                      const CustomTextField(hintText: "09090605708"),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TransPButton(text: "Pay on delivery", width: 125, height: 56,
                            onPressed: () { 
                            Navigator.push(context, MaterialPageRoute(builder: (context) => OrderComplete(),));
                            },
                          ),
                          TransPButton(text: "Pay with card",width: 125, height: 56,
                              onPressed:(){
                                Navigator.of(context).pop();
                                _showCustomBottomSheet(context);
                              }
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return const CustomBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // width: 400,
              height: AppLayout.getHeight(135),
              padding: const EdgeInsets.all(20),
              color: Styles.bgColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => const AddToBasket()));
                        },
                        child: Container(
                          height: AppLayout.getHeight(32),
                          width: AppLayout.getWidth(85),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Styles.bgColor1,
                          ),
                          child: Row(
                            children:  [
                              const Icon(Icons.arrow_back_ios_sharp, color: Color(0xFF000000),),
                              Text('Go back', style: Styles.textStyle, ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: AppLayout.getHeight(50), left: AppLayout.getWidth(25)),
                        child: Text(
                          'My Basket', style: Styles.headline3.copyWith(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppLayout.getHeight(520),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: AppLayout.getWidth(65),
                          height: AppLayout.getHeight(64),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFFFFAEB)
                          ),
                          child: const Image(image: AssetImage('assets/images/dish2-small.png',), width: 40, height: 40),
                        ),
                        Gap(AppLayout.getWidth(10)),
                        Column(
                          children: [
                            Text('Quinoa fruit salad', style: Styles.headline3.copyWith(fontSize: 16),),
                            Gap(AppLayout.getWidth(10)),
                            Text('2packs', style: Styles.textStyle.copyWith(fontSize: 14))
                          ],
                        ),
                        Gap(AppLayout.getWidth(50)),
                        Text(
                          '₦ 2,000',
                          style: Styles.headline3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: const Color(0xFFA7A3A3))
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: AppLayout.getWidth(65),
                          height: AppLayout.getHeight(64),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFF1EFF6)
                          ),
                          child: const Image(image: AssetImage('assets/images/dish2-small.png',), width: 40, height: 40),
                        ),
                        Gap(AppLayout.getWidth(10)),
                        Column(
                          children: [
                            Text('Quinoa fruit salad', style: Styles.headline3.copyWith(fontSize: 16),),
                            Gap(AppLayout.getWidth(10)),
                            Text('2packs', style: Styles.textStyle.copyWith(fontSize: 14))
                          ],
                        ),
                        Gap(AppLayout.getWidth(50)),
                        Text(
                          '₦ 2,000',
                          style: Styles.headline3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: const Color(0xFFA7A3A3))
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 65,
                          height: 64,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFFEF0F0)
                          ),
                          child: const Image(image: AssetImage('assets/images/dish2-small.png',), width: 40, height: 40),
                        ),
                        const Gap(10),
                        Column(
                          children: [
                            Text('Quinoa fruit salad', style: Styles.headline3.copyWith(fontSize: 16),),
                            const Gap(10),
                            Text('2packs', style: Styles.textStyle.copyWith(fontSize: 14))
                          ],
                        ),
                        const Gap(50),
                        Text(
                          '₦ 2,000',
                          style: Styles.headline3,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: const Color(0xFFA7A3A3))
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Total', style: Styles.headline3.copyWith(fontSize: 14),),
                      Gap(AppLayout.getHeight(10)),
                      Text(
                        '₦ 6,000',
                        style: Styles.headline2,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      _showBottomSheet(context);
                    },
                    child: Container(
                      height: AppLayout.getHeight(56),
                      width: AppLayout.getWidth(199),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Styles.bgColor,
                      ),
                      child: Center(child: Text('Checkout', style: Styles.textStyle.copyWith(color: Colors.white),)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
