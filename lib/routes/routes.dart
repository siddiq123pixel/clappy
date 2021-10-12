import 'package:clappy/routes/platform_route.dart';
import 'package:clappy/screen/export.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppRoutes{
  static const String initializerPage = '/';
  static Route<dynamic> appRoutes(final RouteSettings settings) {
    switch (settings.name) {
      case initializerPage:
        return platformRoute(
          child: Home(),
          type: PageTransitionType.fade,
          settings: settings,
        );

      default:
        throw UnimplementedError('Route is not implemented!');
    }
  }
}