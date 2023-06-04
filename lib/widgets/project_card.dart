import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

Widget projectCard(
  context,
  String title,
  String subtitle,
  String description,
) {
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Title
                    SelectableText(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    // Subtitle
                    SelectableText(
                      subtitle,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(
                      height: stdMargin,
                    ),
                    // Project description
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: stdMargin),
                        child: SingleChildScrollView(
                          child: SelectableText(
                            description,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
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
