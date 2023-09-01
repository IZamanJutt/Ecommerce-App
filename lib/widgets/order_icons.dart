import 'package:flutter/cupertino.dart';

class OrderIcons extends StatelessWidget {
  final Color color;
  final  ImageProvider imageUrl;
  const OrderIcons({Key? key, required this.color, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Image(
        image: imageUrl,
      ),
    );
  }
}
