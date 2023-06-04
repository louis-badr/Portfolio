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
            padding: const EdgeInsets.symmetric(vertical: stdMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: stdMargin,
                    bottom: stdMargin,
                  ),
                  child: Text(
                    'Recent Projects',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
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
                                projectCard(
                                  context,
                                  'AugmenTip',
                                  'A wearable multi-fingertip haptic device on a budget',
                                  "Haptic solutions for the hand enabling manipulation and interaction with virtual elements have gained a lot of interest with the spread of Extended Reality (XR) and could offer a large number of applications from entertainment, design, rehabilitation to training. Exoskeletons are currently one of the most popular haptics solution for the hand. These systems provide kinesthetic feedback but rarely include cutaneous feedback. Although expensive, open source and Do it yourself (DIY) exoskeleton alternatives are emerging such as the LucidGloves project. The aim of AugmenTip is to develop and evaluate a solution in the line of LucidGloves: open source, DIY friendly, low cost and wearable, to add contact, pressure and vibration feedback to all fingertips and optionally augment an exoskeleton. This project will allow the development of applications that integrate this new dimension of touch and provide support for future haptics projects to address complementary tactile stimuli.",
                                ),
                                projectCard(
                                  context,
                                  'AugmenTip',
                                  'A wearable multi-fingertip haptic device on a budget',
                                  "Haptic solutions for the hand enabling manipulation and interaction with virtual elements have gained a lot of interest with the spread of Extended Reality (XR) and could offer a large number of applications from entertainment, design, rehabilitation to training. Exoskeletons are currently one of the most popular haptics solution for the hand. These systems provide kinesthetic feedback but rarely include cutaneous feedback. Although expensive, open source and Do it yourself (DIY) exoskeleton alternatives are emerging such as the LucidGloves project. The aim of AugmenTip is to develop and evaluate a solution in the line of LucidGloves: open source, DIY friendly, low cost and wearable, to add contact, pressure and vibration feedback to all fingertips and optionally augment an exoskeleton. This project will allow the development of applications that integrate this new dimension of touch and provide support for future haptics projects to address complementary tactile stimuli.",
                                ),
                                projectCard(
                                  context,
                                  'AugmenTip',
                                  'A wearable multi-fingertip haptic device on a budget',
                                  "Haptic solutions for the hand enabling manipulation and interaction with virtual elements have gained a lot of interest with the spread of Extended Reality (XR) and could offer a large number of applications from entertainment, design, rehabilitation to training. Exoskeletons are currently one of the most popular haptics solution for the hand. These systems provide kinesthetic feedback but rarely include cutaneous feedback. Although expensive, open source and Do it yourself (DIY) exoskeleton alternatives are emerging such as the LucidGloves project. The aim of AugmenTip is to develop and evaluate a solution in the line of LucidGloves: open source, DIY friendly, low cost and wearable, to add contact, pressure and vibration feedback to all fingertips and optionally augment an exoskeleton. This project will allow the development of applications that integrate this new dimension of touch and provide support for future haptics projects to address complementary tactile stimuli.",
                                ),
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
