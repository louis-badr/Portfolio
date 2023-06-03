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
            child: Stack(
              children: [
                SelectableText(
                  'About Me',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 400,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SelectableText(
                              "My name is Louis\n\nI do a bit of everything from mechanics to electronics, programming and manufacturing, combining it with scientific research, user experience and art.\n\nI'm currently looking for a PhD position in the field of Human-Computer Interaction and haptics.\n\nContact me at: louis.badr@edu.devinci.fr",
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
