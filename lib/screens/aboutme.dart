import 'package:flutter/material.dart';
import 'package:portfolio/widgets/background.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
            painter: CenterRightBackground(),
            size: const Size(double.infinity, double.infinity),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.bottomCenter,
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
        ],
      ),
    );
  }
}
