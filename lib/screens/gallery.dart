import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/background.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        CustomPaint(
          painter: BottomLeftBackground(),
          size: const Size(double.infinity, double.infinity),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Transform.rotate(
            angle: 90 * math.pi / 180,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Color(0xFF2E45ED),
                  width: 2,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/projects');
              },
              child: Text(
                'Projects',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
