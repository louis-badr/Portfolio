import 'package:flutter/material.dart';

class BottomRightBackground extends CustomPainter {
  final int margin = 20;
  final int marksNb = 4;
  @override
  void paint(Canvas canvas, Size size) {
    final double vLineLength = size.height - margin;
    final double hLineLength = size.width - margin;
    final double markLength = margin / 2;
    final double rulesSpacing = hLineLength / (marksNb + 1);
    final int vMarksNb = vLineLength ~/ rulesSpacing;

    Paint borders = Paint()
      ..color = const Color(0xFFF4EFDC)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path vLine = Path();
    vLine.moveTo(hLineLength, 0);
    vLine.lineTo(hLineLength, vLineLength);

    Path hLine = Path();
    hLine.moveTo(0, vLineLength);
    hLine.lineTo(hLineLength, vLineLength);

    canvas.drawPath(vLine, borders);
    canvas.drawPath(hLine, borders);

    for (int i = 1; i <= marksNb; i++) {
      Path hMark = Path();
      hMark.moveTo(rulesSpacing * i, vLineLength);
      hMark.lineTo(rulesSpacing * i, size.height - markLength);
      canvas.drawPath(hMark, borders);
    }

    for (int i = 1; i <= vMarksNb; i++) {
      Path vMark = Path();
      vMark.moveTo(hLineLength, vLineLength - (rulesSpacing * i));
      vMark.lineTo(hLineLength + markLength, vLineLength - (rulesSpacing * i));
      canvas.drawPath(vMark, borders);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class BottomCenterBackground extends CustomPainter {
  final int margin = 20;
  final int marksNb = 4;
  @override
  void paint(Canvas canvas, Size size) {
    final double vLineLength = size.height - margin;
    final double markLength = margin / 2;
    final double rulesSpacing = size.width / (marksNb + 1);

    Paint borders = Paint()
      ..color = const Color(0xFFF4EFDC)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path hLine = Path();
    hLine.moveTo(0, vLineLength);
    hLine.lineTo(size.width, vLineLength);

    canvas.drawPath(hLine, borders);

    for (int i = 1; i <= marksNb; i++) {
      Path hMark = Path();
      hMark.moveTo(rulesSpacing * i, vLineLength);
      hMark.lineTo(rulesSpacing * i, size.height - markLength);
      canvas.drawPath(hMark, borders);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class BottomLeftBackground extends CustomPainter {
  final double margin = 20;
  final int marksNb = 4;
  @override
  void paint(Canvas canvas, Size size) {
    final double vLineLength = size.height - margin;
    final double hLineLength = size.width - margin;
    final double markLength = margin / 2;
    final double rulesSpacing = hLineLength / (marksNb + 1);
    final int vMarksNb = (vLineLength % rulesSpacing).toInt();

    Paint borders = Paint()
      ..color = const Color(0xFFF4EFDC)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path vLine = Path();
    vLine.moveTo(margin, 0);
    vLine.lineTo(margin, vLineLength);

    Path hLine = Path();
    hLine.moveTo(margin, vLineLength);
    hLine.lineTo(size.width, vLineLength);

    canvas.drawPath(vLine, borders);
    canvas.drawPath(hLine, borders);

    for (int i = 1; i <= marksNb; i++) {
      Path hMark = Path();
      hMark.moveTo(margin + (rulesSpacing * i), vLineLength);
      hMark.lineTo(margin + (rulesSpacing * i), size.height - markLength);
      canvas.drawPath(hMark, borders);
    }

    for (int i = 1; i <= vMarksNb; i++) {
      Path vMark = Path();
      vMark.moveTo(margin, vLineLength - (rulesSpacing * i));
      vMark.lineTo(markLength, vLineLength - (rulesSpacing * i));
      canvas.drawPath(vMark, borders);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CenterRightBackground extends CustomPainter {
  final int margin = 20;
  final int marksNb = 4;
  @override
  void paint(Canvas canvas, Size size) {
    final double vLineLength = size.height - margin;
    final double hLineLength = size.width - margin;
    final double markLength = margin / 2;
    final double rulesSpacing = hLineLength / (marksNb + 1);
    final int vMarksNb = (vLineLength % rulesSpacing).toInt();

    Paint borders = Paint()
      ..color = const Color(0xFFF4EFDC)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path vLine = Path();
    vLine.moveTo(hLineLength, 0);
    vLine.lineTo(hLineLength, size.height);

    canvas.drawPath(vLine, borders);

    for (int i = 1; i <= vMarksNb; i++) {
      Path vMark = Path();
      vMark.moveTo(hLineLength, vLineLength - (rulesSpacing * i));
      vMark.lineTo(hLineLength + markLength, vLineLength - (rulesSpacing * i));
      canvas.drawPath(vMark, borders);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
