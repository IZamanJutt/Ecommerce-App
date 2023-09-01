import 'package:flutter/material.dart';

class EggShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFF08626) // You can set the desired color here
      ..style = PaintingStyle.fill;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final path = Path();

    final xCenter = size.width / 2;
    final yCenter = size.height / 2;

    final radiusX = size.width / 2;
    final radiusY = size.height / 2 * 1.6; // Adjust the oval shape vertically by changing this value

    path.moveTo(xCenter + radiusX, yCenter);
    path.quadraticBezierTo(xCenter + radiusX, yCenter + radiusY, xCenter, yCenter + radiusY);
    path.quadraticBezierTo(xCenter - radiusX, yCenter + radiusY, xCenter - radiusX, yCenter);
    path.quadraticBezierTo(xCenter - radiusX, yCenter - radiusY, xCenter, yCenter - radiusY);
    path.quadraticBezierTo(xCenter + radiusX, yCenter - radiusY, xCenter + radiusX, yCenter);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
