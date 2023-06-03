import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/gallery.dart';
import 'package:portfolio/screens/home.dart';
import 'package:portfolio/widgets/background.dart';
import 'package:portfolio/widgets/project_card.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(stdMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recent Projects',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: stdMargin),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Transform.rotate(
                        angle: -90 * math.pi / 180,
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
                                type: PageTransitionType.leftToRightJoined,
                                child: const GalleryScreen(),
                                childCurrent: this,
                                duration: const Duration(milliseconds: 500),
                                reverseDuration:
                                    const Duration(milliseconds: 500),
                              ),
                            );
                          },
                          child: Text(
                            'Gallery',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            ListView(
                              children: [
                                projectCard(context),
                                projectCard(context),
                                projectCard(context),
                              ],
                            ),
                            IgnorePointer(
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.transparent, bgColor],
                                    stops: const [0.9, 1.0],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.rotate(
                        angle: 90 * math.pi / 180,
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
                                type: PageTransitionType.rightToLeftJoined,
                                child: const HomeScreen(),
                                childCurrent: this,
                                duration: const Duration(milliseconds: 500),
                                reverseDuration:
                                    const Duration(milliseconds: 500),
                              ),
                            );
                          },
                          child: Text(
                            'Home',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          IgnorePointer(
            child: CustomPaint(
              painter: BottomCenterBackground(),
              size: const Size(double.infinity, double.infinity),
            ),
          ),
        ],
      ),
    );
  }
}
