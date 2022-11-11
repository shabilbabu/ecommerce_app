import 'package:flutter/material.dart';


class FadeRoute1 extends PageRouteBuilder {
  final Widget page;

  FadeRoute1(this.page)
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: page,
        ),
  );
}


class FadeRoute2 extends PageRouteBuilder {
  final Widget page;

  FadeRoute2(this.page)
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: const Duration(milliseconds: 2000),
    reverseTransitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          parent: animation,
          reverseCurve: Curves.fastOutSlowIn);
      return FadeTransition(
        opacity: animation,
        child: page,
      );
    },
  );
}
