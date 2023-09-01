import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/utills/app_layout.dart';
import 'package:ecommerce/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utills/app_styles.dart';
import '../widgets/btn_widget.dart';
import '../widgets/egg_shape_painter.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                    child: Image.asset('assets/images/fruit-baskit.png'),
                  ),
                  CustomPaint(
                    size: const Size(350, 12), // Set the desired size for your egg shape
                    painter: EggShapePainter(),
                  )
                ],
              ),
            ),
            Gap(AppLayout.getHeight(40)),
            Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: AppLayout.getWidth(30)),
                  child: Text(
                    'What is your firstname?',
                    style: Styles.headline3,
                    textAlign: TextAlign.left,
                  ),
                ),
                Gap(AppLayout.getHeight(30)),
                const CustomTextField(hintText: 'Tony'),
              ],
            ),
            const Gap(40),
            CustomButton(
              text: 'Start Ordering',
              width: AppLayout.getWidth(327),
              height: AppLayout.getHeight(56),
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
              },
            )
          ],
        ),
      )
    );
  }
}
