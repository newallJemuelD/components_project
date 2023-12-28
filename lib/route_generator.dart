import 'package:components_project/my_app.dart';
import 'package:components_project/navigation/screen_routes.dart';
import 'package:components_project/screens/app_bars/app_bars_screen.dart';
import 'package:components_project/screens/app_bars/components/sliver_appbar.dart';
import 'package:components_project/screens/app_security_related_screen.dart';
import 'package:components_project/screens/drop_downs_screen.dart';
import 'package:components_project/screens/libraries_name_list_screen.dart';
import 'package:components_project/screens/navigation_bars_screen.dart';
import 'package:components_project/screens/state_management/components/provider/counter_view_model.dart';
import 'package:components_project/screens/state_management/components/provider/provider_screen.dart';
import 'package:components_project/screens/state_management/components/set_state_counter_app.dart';
import 'package:components_project/screens/state_management/state_management_screen.dart';
import 'package:components_project/screens/tab_bars_screen.dart';
import 'package:components_project/screens/toggle_radio_screen/components/single_select_radio.dart';
import 'package:components_project/screens/toggle_radio_screen/toggle_radio_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'screens/state_management/components/bloc/bloc_state_management.dart';
import 'screens/state_management/components/bloc/counter_bloc.dart';
import 'screens/state_management/components/provider/counter_model.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case ScreenRoutes.myApp:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const MyApp();
      });
    //tabbars
    case ScreenRoutes.tabBars:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const TabBarsScreen();
      });
    //toggle - radio buttons
    case ScreenRoutes.toggleRadio:
      return MaterialPageRoute(builder: (BuildContext context) {
        return ToggleRadioScreen();
      });
    case ScreenRoutes.singleSelectRadio:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const SingleSelectRadio();
      });
    //appbars
    case ScreenRoutes.appBars:
      return MaterialPageRoute(builder: (BuildContext context) {
        return AppBarsScreen();
      });
    case ScreenRoutes.sliverAppbar:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const SliverAppbar();
      });
    //navigation
    case ScreenRoutes.navigationBars:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const NavigationBarsScreen();
      });
    //drop downs
    case ScreenRoutes.dropDowns:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const DropDownsScreen();
      });
    //libraries and packages
    case ScreenRoutes.librariesNameList:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const LibrariesNameListScreen();
      });
    //app security
    case ScreenRoutes.appSecurityRelated:
      return MaterialPageRoute(builder: (BuildContext context) {
        return const AppSecurityRelated();
      });
    //state management
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
    case ScreenRoutes.provider:
      return MaterialPageRoute(builder: (BuildContext context) {
        int count = 0;
        final counterModel = CounterModel(count);
        final counterViewModel = CounterViewModel(counterModel);

        return ChangeNotifierProvider.value(
          value: counterViewModel,
          child: const ProviderScreen(),
        );
      });
    //add next here
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
