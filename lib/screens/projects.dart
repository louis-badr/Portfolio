import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/background.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
            painter: BottomCenterBackground(),
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
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  'Home',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Transform.rotate(
              angle: -90 * math.pi / 180,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color(0xFF2E45ED),
                    width: 2,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/gallery');
                },
                child: Text(
                  'Gallery',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
