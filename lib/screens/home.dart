import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/widgets/background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String currentDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  final String dvicLogoSVG = 'vector/dvic_logo.svg';
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Stack(
          children: [
            CustomPaint(
              painter: BottomRightBackground(),
              size: const Size(double.infinity, double.infinity),
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
                    Navigator.pushNamed(context, '/projects');
                  },
                  child: Text(
                    'Projects',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0xFF2E45ED),
                          width: 2,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/aboutme');
                      },
                      child: Text(
                        'About me',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: constraints.maxWidth >= 700
                          ? MediaQuery.of(context).size.width * 0.5
                          : MediaQuery.of(context).size.width * 0.7,
                      child: Table(
                          border: TableBorder.all(
                            width: 2,
                            color: const Color(0xFFF4EFDC),
                          ),
                          children: [
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: SelectableText(
                                        'TITLE',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                    ),
                                    SelectableText(
                                      "Louis' Portfolio",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge,
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: SelectableText(
                                        'DESCRIPTION',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                    ),
                                    SelectableText(
                                      'Creative technologist based in Paris - between engineering, research and design',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                            TableRow(children: [
                              Table(
                                children: [
                                  TableRow(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: SelectableText(
                                              'LOGO',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 75,
                                            child: SvgPicture.asset(
                                              dvicLogoSVG,
                                              colorFilter:
                                                  const ColorFilter.mode(
                                                Color(0xFF2E45ED),
                                                BlendMode.srcIn,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Table(
                                      border: const TableBorder(
                                        left: BorderSide(
                                          width: 2,
                                          color: Color(0xFFF4EFDC),
                                        ),
                                      ),
                                      children: [
                                        TableRow(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: SelectableText(
                                                      'CREATED BY',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleSmall,
                                                    ),
                                                  ),
                                                  SelectableText(
                                                    'Louis BADR',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        TableRow(children: [
                                          Table(
                                            border: TableBorder.all(
                                              width: 2,
                                              color: const Color(0xFFF4EFDC),
                                            ),
                                            children: [
                                              TableRow(children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: SelectableText(
                                                          'DATE OF ISSUE',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .titleSmall,
                                                        ),
                                                      ),
                                                      SelectableText(
                                                        currentDate,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .titleMedium,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: SelectableText(
                                                          'REV',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .titleSmall,
                                                        ),
                                                      ),
                                                      SelectableText(
                                                        '0.1',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .titleMedium,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ])
                                            ],
                                          )
                                        ]),
                                      ],
                                    )
                                  ])
                                ],
                              )
                            ]),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
