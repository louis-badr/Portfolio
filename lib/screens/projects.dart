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
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeftJoined,
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
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.leftToRightJoined,
                      child: const GalleryScreen(),
                      childCurrent: this,
                      duration: const Duration(milliseconds: 500),
                      reverseDuration: const Duration(milliseconds: 500),
                    ),
                  );
                },
                child: Text(
                  'Gallery',
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
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Recent Projects',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ListView(
                        children: [
                          projectCard(context),
                          projectCard(context),
                          projectCard(context),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
