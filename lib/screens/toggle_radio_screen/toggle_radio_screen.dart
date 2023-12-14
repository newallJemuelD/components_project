import 'package:flutter/material.dart';

import '../../models/categories.dart';
import '../../navigation/screen_routes.dart';

class ToggleRadioScreen extends StatelessWidget {
  ToggleRadioScreen({super.key});

  final List<Categories> categories = [
    singleSelect,
  ];

  static final Categories singleSelect = Categories(
    route: ScreenRoutes.singleSelectRadio,
    categoryName: 'Single select radio buttons',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggle and radio buttons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Text(
              'Toggle / radio buttons is the common way of selecting one in a given set of options.',
            ),
            const SizedBox(
              height: 5,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Apps referred or implemented:  JMF, Arihant'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Implementations',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return _buildListContentWidget(context, index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListContentWidget(BuildContext context, int index) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
            context, categories[index].route ?? ScreenRoutes.myApp);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20),
        margin: const EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 223, 233, 241),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          categories[index].categoryName ?? '--',
        ),
      ),
    );
  }
}
