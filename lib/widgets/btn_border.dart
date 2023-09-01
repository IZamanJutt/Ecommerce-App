import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utills/app_styles.dart';

class TransPButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double height;
  final double width;
  const TransPButton({Key? key, required this.text, required this.onPressed, required this.height, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: const Color(0xFFFFA451)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Center(
          child: Text(
              text,
              style: Styles.textStyle.copyWith(color: const Color(0xFFFFA451))),
        ),
      ),
    );
  }
}
