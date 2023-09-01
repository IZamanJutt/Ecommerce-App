import 'package:ecommerce/screens/authentication.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utills/app_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  const CustomButton({Key? key, required this.text, required this.onPressed, required this.height, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFFFA451),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle.copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}

