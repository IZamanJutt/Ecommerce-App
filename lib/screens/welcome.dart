import 'package:ecommerce/utills/app_layout.dart';
import 'package:ecommerce/utills/app_styles.dart';
import 'package:ecommerce/widgets/btn_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/egg_shape_painter.dart';
import 'authentication.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF3F1F1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: AppLayout.getWidth(2500),
              height: AppLayout.getHeight(469),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                color: Color(0xFFFFA451)
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: AppLayout.getHeight(100), left: AppLayout.getWidth(250)),
                    child: Image.asset('assets/images/smallfruit.png'),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: AppLayout.getHeight(20)),
                    child: Image.asset('assets/images/bigfruit.png'),
                  ),
                  CustomPaint(
                    size: const Size(350, 12), // Set the desired size for your egg shape
                    painter: EggShapePainter(),
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(40)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(10)),
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text('Get The Freshest Fruit Salad Combo', style: Styles.headline3,),
                  Gap(AppLayout.getHeight(20)),
                  Text('We deliver the best and freshest fruit\n salad in town. Order for a combo today!!!', style: Styles.textStyle),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(60)),
            CustomButton(
              width: AppLayout.getWidth(327),
              height: AppLayout.getHeight(56),
              text: 'Let’s Continue',
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Authentication(),));
              },
            ),
          ],
        ),
      ),
    );
  }
}
