import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Stack(
          children: [
            Align(
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
          ],
        ),
      ),
    );
  }
}
