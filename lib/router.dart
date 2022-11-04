import 'package:flutter/material.dart';
import 'package:sua_app/commonWidget/bottom_bar.dart';
import 'package:sua_app/features/HelpAndSupport/screen/HelpAndSupport.dart';
import 'package:sua_app/features/SuaSiSPortal/suasisportal.dart';
import 'package:sua_app/features/auth/screens/authscreen.dart';

import 'commonWidget/container2.dart';
import 'commonWidget/containeranimation.dart';
import 'features/SuaSiSPortal/attendancePortal/Screens/attendance_details_screen.dart';
import 'features/homepage/Screen/HomePage.dart';
import 'features/search/screens/search_screen.dart';
import 'models/product.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );
    case auth_Screen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const auth_Screen(),
      );
    // case LocationSearchUi.routeName:
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => const auth_Screen(),
    //   );
    case HomePage.routeName:
      return MaterialPageRoute(
 n MaterialPageRoute(       settings: routeSettings,
        builder: (_) => const HomePage(),
      );
    case SuaSisPortal.routeName:
      retur
        settings: routeSettings,
        builder: (_) => const SuaSisPortal(),
      );
    case HelpAndSupport.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HelpAndSupport(),
      );
    // case CategorySelectedScreen.routeName:   var category = routeSettings.arguments as String;
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => const CategorySelectedScreen(),
    //   );
    case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SearchScreen(
          searchQuery: searchQuery,
        ),
      );
    case SubjectDetailScreen.routeName:
      var subjectDetails = routeSettings.arguments as subject;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SubjectDetailScreen(
          subjectDetails: subjectDetails,
        ),
      );
    // case OpenContainerTransformDemo.routeName:
    //   var subjectDetails = routeSettings.arguments as subject;
    //   return MaterialPageRoute(
    //     settings: routeSettings,
    //     builder: (_) => const OpenContainerTransformDemo(
    //     ),
    //   );
    case OpenContainerTransformDemo.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => OpenContainerTransformDemo(
          category: category,
        ),
      );
    case OpenContainerTransformDemo2.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => OpenContainerTransformDemo2(
          category: category,
        ),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
