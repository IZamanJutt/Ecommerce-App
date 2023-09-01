import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utills/app_styles.dart';

class GoBackBtn extends StatelessWidget {
  final VoidCallback onPressed;
  const GoBackBtn({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 32,
        width: 85,
       // margin: const EdgeInsets.only(top: 50, left: 18),
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
    );
  }
}
