
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:page_transition/page_transition.dart';

// ignore: missing_return
PageRoute platformRoute({
  required final Widget child,
  final RouteSettings? settings,
  final PageTransitionType type = PageTransitionType.rightToLeft,
  Duration duration =const Duration(milliseconds: 300),
}) {
  switch (Platform.isAndroid) {
    case true:
      return PageTransition(
        child: child,
        type: type,
        duration: duration,
        settings: settings,
      );
    case false:
      return CupertinoPageRoute(
        builder: (_) => child,
        settings: settings,
      );
  }

  return PageTransition(
    child: child,
    type: type,
    duration: duration,
    settings: settings,
  );
}
