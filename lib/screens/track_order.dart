import 'package:ecommerce/screens/order_complete.dart';
import 'package:ecommerce/utills/app_styles.dart';
import 'package:ecommerce/widgets/map.dart';
import 'package:ecommerce/widgets/order_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/go_back_btn_widget.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFA451),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 80, left: 30, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GoBackBtn(onPressed: () {  
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const OrderComplete(),));
                      },),
                      const Gap(30),
                      Text('Delivery Status', style: Styles.headline3.copyWith(color: Colors.white),)
                    ],
                  ),
                ],
              ),
            ),
            const Gap(50),
            Container(
              color: const Color(0xFFFFFFFF),
              height: 677,
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children:  [
                      const OrderIcons(color: Color(0xFFFFFAEB), imageUrl: AssetImage('assets/images/taken.png')),
                      const Gap(20),
                      Text('Order Taken', style: Styles.textStyle.copyWith(
                          fontWeight: FontWeight.w500, fontSize: 16)
                      ),
                      const Gap(150),
                      const Icon(Icons.check_circle, color: Color(0xff4CD964))
                    ],
                  ),
                  const Gap(50),
                  Row(
                    children:  [
                      const OrderIcons(color: Color(0xFFF1EFF6), imageUrl: AssetImage('assets/images/prepared.png')),
                      const Gap(20),
                      Text('Order Is Being Prepared', style: Styles.textStyle.copyWith(
                          fontWeight: FontWeight.w500, fontSize: 16)
                      ),
                      const Gap(68),
                      const Icon(Icons.check_circle, color: Color(0xff4CD964),)
                    ],
                  ),
                  const Gap(50),
                  Row(
                    children:  [
                      const OrderIcons(color: Color(0xFFFEF0F0), imageUrl: AssetImage('assets/images/rider.png')),
                      const Gap(20),
                      Column(
                        children: [
                          Text('Order Is Being Delivered', style: Styles.textStyle.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 16)
                          ),
                          const Gap(5),
                          Text('Your delivery agent is coming', style: Styles.textStyle.copyWith(fontSize: 14)
                          )
                        ],
                      ),
                      const Gap(43),
                      Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xffFFA451)
                          ),
                          child: const Icon(Icons.wifi_calling_3_outlined, color: Color(0xffFFFFFF),))
                    ],
                  ),
                  const Gap(50),
                  const SizedBox(
                    height: 128,
                    width: 327,
                    child: MapScreen(),
                  ),
                  const Gap(50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 64,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF0FEF8)
                        ),
                        child: const Icon(Icons.check_circle, color: Color(0xff4CD964), size: 50,),
                      ),
                      Text('Order Received', style: Styles.headline3,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}