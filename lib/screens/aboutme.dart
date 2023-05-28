import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/home.dart';
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
            padding: const EdgeInsets.all(stdMargin),
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
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTopJoined,
                      child: const HomeScreen(),
                      childCurrent: this,
                      duration: const Duration(milliseconds: 500),
                      reverseDuration: const Duration(milliseconds: 500),
                    ),
                  );
                },
                child: Text(
                  'Home',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: stdMargin * 2,
              vertical: stdMargin,
            ),
            child: Column(
              children: [
                Text(
                  'About Me',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
