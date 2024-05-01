import 'dart:developer';

import 'package:answers_app/providers/home_provider.dart';
import 'package:answers_app/providers/second_provider.dart';
import 'package:answers_app/ui/home/home_page.dart';
import 'package:answers_app/ui/second/second_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'routes.dart';

class AppRoutes {
  static void push({
    required BuildContext context,
    required String route,
  }) {
    final materialRoute = _getRoute(route);
    log('RouteType: ${materialRoute.builder(context)}');
    Navigator.push(
      context,
      materialRoute,
    );
  }

  // static void push({
  //   required BuildContext context,
  //   required String route,
  // }) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => ChangeNotifierProvider(
  //         create: (context) => SecondProvider(),
  //         child: const SecondPage(),
  //       ),
  //     ),
  //   );
  // }

  static MaterialPageRoute<ChangeNotifierProvider> _getRoute(String route) {
    return MaterialPageRoute<ChangeNotifierProvider>(
      builder: (context) {
        switch (route) {
          case Routes.home:
            return _homePage;
          case Routes.second:
            return _secondPage;
          default:
            throw UnimplementedError();
        }
      },
    );
  }

  static ChangeNotifierProvider<HomeProvider> get _homePage =>
      ChangeNotifierProvider<HomeProvider>(
        create: (context) => HomeProvider(),
        child: const HomePage(),
      );

  static ChangeNotifierProvider<SecondProvider> get _secondPage =>
      ChangeNotifierProvider<SecondProvider>(
        create: (context) => SecondProvider(),
        child: const SecondPage(),
      );
}
