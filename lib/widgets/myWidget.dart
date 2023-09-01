import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utills/app_styles.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}
class _MyWidgetState extends State<MyWidget> {
  int number = 0;

  void incrementNumber() {
    setState(() {
      number++;
    });
  }

  void decrementNumber() {
    if (number > 0) {
      setState(() {
        number--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 2, color: const Color(0xFF333333),)
          ),
          child: InkWell(
            onTap: decrementNumber,
            child: const Icon(
              Icons.remove,
              color: Color(0xFF333333),
              size: 20,
            ),
          ),
        ),
        const Gap(10),
        Text(
          number.toString(),
          style: Styles.headline3,
        ),
        const Gap(10),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: const Color(0xFFFFF2E7),
            borderRadius: BorderRadius.circular(30),
            // border: Border.all(width: 2, color: const Color(0xFF333333),)
          ),
          child: InkWell(
            onTap: incrementNumber,
            child: const Icon(
              Icons.add,
              color: Color(0xFFFFA451),
              size: 20,
            ),
          ),
        ),
        const Gap(140),
        Text(
          '₦ 2,000',
          style: Styles.headline2,
        ),
      ],
    );
  }
}
