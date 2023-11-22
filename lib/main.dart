import 'package:components_project/route_generator.dart';
import 'package:flutter/material.dart';

import 'my_app.dart';

void main() {
  runApp(const MaterialApp(
    onGenerateRoute: generateRoute,
    home: MyApp(),
  ));
}
