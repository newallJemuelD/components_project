import 'package:flutter/material.dart';

class TabBarsScreen extends StatelessWidget {
  const TabBarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab bars'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: const [
            Text(
              'Tab bars - highly used in my observation in stock market app. If one concept has two or more sections or data, this widget is used.',
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Apps referred:  JMF, Arihant'),
            ),
          ],
        ),
      ),
    );
  }
}
