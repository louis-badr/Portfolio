import 'package:flutter/material.dart';

class GridPainter extends CustomPainter {
  final int margin = 20;
  @override
  void paint(Canvas canvas, Size size) {
    double rulesSpacing = (size.width - margin) / 4;
    // Vertical line
    Paint paint_0 = Paint()
      ..color = const Color(0xFFF4EFDC)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path path_0 = Path();
    path_0.moveTo(size.width - margin, 0);
    path_0.lineTo(size.width - margin, size.height - margin);

    canvas.drawPath(path_0, paint_0);

    // Horizontal line
    Paint paint_1 = Paint()
      ..color = const Color(0xFFF4EFDC)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path path_1 = Path();
    path_1.moveTo(0, size.height - margin);
    path_1.lineTo(size.width - margin, size.height - margin);

    canvas.drawPath(path_1, paint_1);

    Paint paint_2 = Paint()
      ..color = const Color(0xFFF4EFDC)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path path_2 = Path();
    path_2.moveTo(rulesSpacing, size.height - margin);
    path_2.lineTo(rulesSpacing, size.height - (margin / 2));

    canvas.drawPath(path_2, paint_2);

    Paint paint_3 = Paint()
      ..color = const Color(0xFFF4EFDC)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path path_3 = Path();
    path_3.moveTo(rulesSpacing * 2, size.height - margin);
    path_3.lineTo(rulesSpacing * 2, size.height - (margin / 2));

    canvas.drawPath(path_3, paint_3);

    Paint paint_4 = Paint()
      ..color = const Color(0xFFF4EFDC)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path path_4 = Path();
    path_4.moveTo(rulesSpacing * 3, size.height - margin);
    path_4.lineTo(rulesSpacing * 3, size.height - (margin / 2));

    canvas.drawPath(path_4, paint_4);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}