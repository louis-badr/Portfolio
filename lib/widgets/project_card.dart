import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

Widget projectCard(context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: stdMargin),
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(
            color: Color(0xFF2E45ED),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(stdMargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      'AugmenTip',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    // Subtitle
                    Text(
                      'A wearable multi-fingertip haptic device on a budget',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(
                      height: stdMargin,
                    ),
                    // Project description
                    Padding(
                      padding: const EdgeInsets.only(right: stdMargin),
                      child: Text(
                        "Haptic solutions for the hand enabling manipulation and interaction with virtual elements have gained a lot of interest with the spread of Extended Reality (XR) and could offer a large number of applications from entertainment, design, rehabilitation to training. Exoskeletons are currently one of the most popular haptics solution for the hand. These systems provide kinesthetic feedback but rarely include cutaneous feedback. Although expensive, open source and Do it yourself (DIY) exoskeleton alternatives are emerging such as the LucidGloves project. The aim of AugmenTip is to develop and evaluate a solution in the line of LucidGloves: open source, DIY friendly, low cost and wearable, to add contact, pressure and vibration feedback to all fingertips and optionally augment an exoskeleton. This project will allow the development of applications that integrate this new dimension of touch and provide support for future haptics projects to address complementary tactile stimuli.",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                  ],
                ),
              ),
              const Flexible(
                flex: 1,
                child: Placeholder(),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
