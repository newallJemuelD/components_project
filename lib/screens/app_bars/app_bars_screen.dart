import 'package:flutter/material.dart';

import '../../models/categories.dart';
import '../../navigation/screen_routes.dart';

class AppBarsScreen extends StatelessWidget {
  AppBarsScreen({super.key});

  final List<Categories> categories = [
    setState,
  ];

  static final Categories setState = Categories(
    route: ScreenRoutes.sliverAppbar,
    categoryName: 'sliverAppbar',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App bars'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Text(
              'Appbars - The current design is transparent with back navigation icon, title and action icons if needed',
              style: TextStyle(
                height: 1.5,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Apps referred:  JMF, Arihant',
                style: TextStyle(
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
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
