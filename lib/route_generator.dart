import 'dart:developer';

import 'package:components_project/my_app.dart';
import 'package:components_project/navigation/screen_routes.dart';
import 'package:components_project/screens/app_bars_screen.dart';
import 'package:components_project/screens/app_security_related_screen.dart';
import 'package:components_project/screens/drop_downs_screen.dart';
import 'package:components_project/screens/navigation_bars_screen.dart';
import 'package:components_project/screens/state_management/components/set_state_counter_app.dart';
import 'package:components_project/screens/state_management/state_management_screen.dart';
import 'package:components_project/screens/tab_bars_screen.dart';
import 'package:components_project/screens/toggle_radio_screen/components/single_select_radio.dart';
import 'package:components_project/screens/toggle_radio_screen/toggle_radio_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/state_management/components/bloc/bloc_state_management.dart';
import 'screens/state_management/components/bloc/counter_bloc.dart';

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
        return ToggleRadioScreen();
      });
    case ScreenRoutes.appBars:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const AppBarsScreen();
      });
    case ScreenRoutes.navigationBars:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const NavigationBarsScreen();
      });
    case ScreenRoutes.dropDowns:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const DropDownsScreen();
      });
    case ScreenRoutes.librariesNameList:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const DropDownsScreen();
      });
    case ScreenRoutes.appSecurityRelated:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const AppSecurityRelated();
      });
    case ScreenRoutes.singleSelectRadio:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const SingleSelectRadio();
      });
    case ScreenRoutes.stateMangementTechniques:
      return MaterialPageRoute(builder: (BuildContext context) {
        return StateManagementScreen();
      });
    case ScreenRoutes.setState:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const SetStateCounterApp();
      });
    case ScreenRoutes.blocStateManagement:
      return MaterialPageRoute(builder: (BuildContext context) {
        return BlocProvider(
          create: (context) => CounterBloc(),
          child: const BlocStateManagement(),
        );
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
