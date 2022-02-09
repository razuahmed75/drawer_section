import 'package:flutter/material.dart';

Route createRoute(page) {
  return PageRouteBuilder(
    pageBuilder: (c, a, a2) => page,
    transitionsBuilder: (c, a, a2, child) => SlideTransition(
        position: a.drive(Tween(begin: Offset(1.0, 0.0), end: Offset.zero)),
        child: child),

    // transitionDuration: Duration(seconds: 1),
  );
}
