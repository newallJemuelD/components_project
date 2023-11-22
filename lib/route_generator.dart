import 'package:components_project/my_app.dart';
import 'package:components_project/navigation/screen_routes.dart';
import 'package:components_project/screens/app_bars_screen.dart';
import 'package:components_project/screens/tab_bars_screen.dart';
import 'package:components_project/screens/toggle_radio_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case ScreenRoutes.myApp:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const MyApp();
      });
    case ScreenRoutes.tabBars:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const TabBarsScreen();
      });
    case ScreenRoutes.toggleRadio:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const ToggleRadioScreen();
      });
    case ScreenRoutes.appBars:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const AppBarsScreen();
      });
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        );
      });
  }
}
