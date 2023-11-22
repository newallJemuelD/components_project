import 'package:flutter/material.dart';

import 'models/categories.dart';
import 'navigation/screen_routes.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Categories> categories = [
    tabBar,
    toggleRadio,
    appBars,
    navigationBars,
    dropDowns,
    librariesNameList,
    appSecurityRelated
  ];

  static final Categories tabBar = Categories(
    route: ScreenRoutes.tabBars,
    categoryName: 'Tab bars',
  );
  static final Categories toggleRadio = Categories(
    route: ScreenRoutes.toggleRadio,
    categoryName: 'Toggle / Radio buttons',
  );
  static final Categories appBars = Categories(
    route: ScreenRoutes.appBars,
    categoryName: 'App bars',
  );
  static final Categories navigationBars = Categories(
    route: ScreenRoutes.appBars,
    categoryName: 'Navigation bars',
  );
  static final Categories dropDowns = Categories(
    route: ScreenRoutes.dropDowns,
    categoryName: 'Drop Downs',
  );
  static final Categories librariesNameList = Categories(
    route: ScreenRoutes.librariesNameList,
    categoryName: 'Libraries / features name list',
  );
  static final Categories appSecurityRelated = Categories(
    route: ScreenRoutes.librariesNameList,
    categoryName: 'Libraries / features name list',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Components library'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Wrap(
            children: List.generate(
          categories.length,
          (index) => InkWell(
            onTap: () {
              Navigator.pushNamed(
                  context, categories[index].route ?? ScreenRoutes.myApp);
            },
            child: Container(
              margin: const EdgeInsets.only(right: 20, bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 222, 222),
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                categories[index].categoryName.toString(),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
