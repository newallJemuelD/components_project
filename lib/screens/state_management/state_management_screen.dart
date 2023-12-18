import 'package:flutter/material.dart';

import '../../models/categories.dart';
import '../../navigation/screen_routes.dart';

class StateManagementScreen extends StatelessWidget {
  StateManagementScreen({super.key});

  static final List<String> techniquesNamesList1 = [
    'setState',
    'InheritedWidget',
    'Provider',
    'GetX',
    'Bloc',
    'Redux',
    'Obx, GetBuilder',
    'Riverpod',
    'Flutter riverpod',
    'Cubit'
  ];

  static final List<String> techniquesNamesList2 = [
    'MobX',
    'Solidart',
    'flutter_reactive_value',
    'Triple pattern',
    'states_rebuilder',
    'Binder',
    'GetIt',
    'Fish Redux'
  ];

  final List<Categories> categories = [
    setState,
    blocStateManagement,
  ];

  static final Categories setState = Categories(
    route: ScreenRoutes.setState,
    categoryName: 'setState',
  );

  static final Categories blocStateManagement = Categories(
    route: ScreenRoutes.blocStateManagement,
    categoryName: 'bloc',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State management techniques'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Definition',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
            const Text(
              'To manage app level state (data to be shared by two or more widgets) state management techniques can be used based on needs.',
              style: TextStyle(
                height: 1.5,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                _buildBulletList(context, techniquesNamesList1),
                _buildBulletList(context, techniquesNamesList2),
              ],
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

Widget _buildBulletList(BuildContext context, List<String> nameList) {
  return SizedBox(
    height: MediaQuery.of(context).size.height / 4.4,
    width: MediaQuery.of(context).size.width / 3,
    child: ListView.builder(
      itemCount: nameList.length,
      itemBuilder: (context, index) {
        return Text(
          '• ${nameList[index]}',
          style: const TextStyle(height: 1.5),
        );
      },
    ),
  );
}
