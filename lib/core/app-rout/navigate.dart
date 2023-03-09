import 'package:flutter/material.dart';

navigateAndFinished(context, screen) =>
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => screen), (route) => false);

void navigateToAndRemoveUntil(BuildContext context,
    {required Widget page, bool withHistory = false}) {
  Navigator.pushAndRemoveUntil(
    context,
    // PageRouteBuilder(
    //   pageBuilder: (context, animation, secondaryAnimation) => page,
    //   transitionDuration: const Duration(milliseconds: 500),
    //   reverseTransitionDuration: const Duration(milliseconds: 350),
    //   transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //     const begin = Offset(0.0, 1.0);
    //     const end = Offset.zero;
    //     const curve = Curves.ease;
    //     var tween =
    //         Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    //     return SlideTransition(
    //       position: animation.drive(tween),
    //       child: child,
    //     );
    //   },
    // ),
    SlideRightRoute(page: page),
    (route) => withHistory,
  );
}

Future<void> navigateToAndReplace(BuildContext context, Widget page) {
  return Navigator.pushReplacement(
    context,
    PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    ),
  );
}

Future<void> navigateTo(BuildContext context, Widget page) {
  return Navigator.push(
    context,
    // PageRouteBuilder(
    //   transitionDuration: const Duration(milliseconds: 500),
    //   pageBuilder: (context, animation, secondaryAnimation) => page,
    //   transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //     const begin = Offset(0.0, 1.0);
    //     const end = Offset.zero;
    //     const curve = Curves.ease;
    //     var tween =
    //         Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    //     return SlideTransition(
    //       position: animation.drive(tween),
    //       child: child,
    //     );
    //   },
    // ),
    SizeRoute(page: page),
  );
}

void navigatePop(BuildContext context) {
  return Navigator.of(context).pop();
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;

  SlideRightRoute({required this.page})
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
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class SizeRoute extends PageRouteBuilder {
  final Widget page;

  SizeRoute({required this.page})
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
              Align(
            child: SizeTransition(
              sizeFactor: animation,
              child: child,
            ),
          ),
        );
}