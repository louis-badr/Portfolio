import 'dart:math' as math;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio - Louis Badr',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E45ED),
          background: const Color(0xFF04071B),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF4EFDC),
          ),
          titleMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF4EFDC),
          ),
          titleSmall: TextStyle(
            fontSize: 12,
            color: Color(0xFFF4EFDC),
          ),
          displayMedium: TextStyle(
            fontSize: 14,
            color: Color(0xFFF4EFDC),
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String currentDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  final String dvicLogoSVG = 'vector/dvic_logo.svg';
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Stack(
          children: [
            CustomPaint(
              painter: GridPainter(),
              size: const Size(double.infinity, double.infinity),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Stack(
                children: [
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
                          print('hi');
                        },
                        child: Text(
                          'Projects',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                    ),
                  ),
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
                        print('hi');
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
                                                        '1.0',
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

class GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Vertical line
    Paint paint_0 = Paint()
      ..color = const Color(0xFFF4EFDC)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path path_0 = Path();
    path_0.moveTo(size.width - 17, 0);
    path_0.lineTo(size.width - 17, size.height - 17);

    canvas.drawPath(path_0, paint_0);

    // Horizontal line
    Paint paint_1 = Paint()
      ..color = const Color(0xFFF4EFDC)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path path_1 = Path();
    path_1.moveTo(0, size.height - 17);
    path_1.lineTo(size.width - 17, size.height - 17);

    canvas.drawPath(path_1, paint_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
