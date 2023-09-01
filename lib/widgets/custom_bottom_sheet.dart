import 'package:ecommerce/screens/track_order.dart';
import 'package:ecommerce/utills/app_styles.dart';
import 'package:ecommerce/widgets/btn_widget.dart';
import 'package:ecommerce/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: GestureDetector(
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
            ),
            Container(
              height: 550,
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Card Holders Name",
                    style: Styles.headline2.copyWith(fontSize: 20),
                  ),
                  const Gap(10),
                  const CustomTextField(hintText: 'Adolphus Chris'),
                  const Gap(10),
                  Text("Card Number",
                    style: Styles.headline2.copyWith(fontSize: 20),
                  ),
                  const Gap(10),
                  const CustomTextField(hintText: '1234 5678 9012 1314'),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Date', style: Styles.headline3,),
                          const Gap(10),
                          Container(
                            width: 134,
                            height: 56,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade300,
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: '10/30',
                                border: InputBorder.none,
                                labelStyle: TextStyle(
                                  color: Color(0xFFC2BDBD),
                                  fontFamily: 'Alata',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('CVC', style: Styles.headline3,),
                          const Gap(10),
                          Container(
                            width: 134,
                            height: 56,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade300,
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: '123',
                                border: InputBorder.none,
                                labelStyle: TextStyle(
                                  color: Color(0xFFC2BDBD),
                                  fontFamily: 'Alata',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Gap(10),
                  CustomButton(
                      text: 'Complete Order',
                      height: 50,
                      width: 356,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TrackOrder(),));
                      },
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
