import 'package:animated_check/animated_check.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/screens/track_order.dart';
import 'package:ecommerce/utills/app_styles.dart';
import 'package:ecommerce/widgets/btn_border.dart';
import 'package:ecommerce/widgets/btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderComplete extends StatefulWidget {
  const OrderComplete({Key? key}) : super(key: key);

  @override
  _OrderCompleteState createState() => _OrderCompleteState();
}

class _OrderCompleteState extends State<OrderComplete>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _animation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: _animationController, curve: Curves.easeInOutCirc));
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      _animationController.reset();
      _animationController.forward();
    });
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 3, color: const Color(0xFF4CD964)),
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFFE0FFE5),
                    ),
                    child: Center(
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xFF4CD964),
                        ),
                        child: Center(
                          child: AnimatedCheck(
                            color: Colors.white,
                            strokeWidth: 5.0,
                            progress: _animation,
                            size: 75,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(30),
            Text('Congratulations!!!', style: Styles.headline2,),
            const Gap(30),
            Text('Your order have been taken and\n is being attended to',
              style: Styles.textStyle, textAlign: TextAlign.center,),
            const Gap(30),
            CustomButton(height: 56, width: 133, text: 'Track order',
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const TrackOrder(),));
            },
            ),
            const Gap(30),
            TransPButton(text: 'Continue shopping', height: 56, width: 181,
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
              }
              ),
          ],
        ),
      ),
    );
  }
}
