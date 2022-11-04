import 'package:flutter/material.dart';

final navigateKey = GlobalKey<NavigatorState>();

void navigateToAndRemove({required Widget page, bool withHistory = true}) {
  Navigator.pushAndRemoveUntil(
      navigateKey.currentContext!,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
      ),
      (route) => withHistory);
}

Future<void> navigateAndPop(BuildContext context, Widget page) {
  return Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => page));
}

Future<void> navigateTo(BuildContext context, Widget page) {
return Navigator.of(context)
    .push(MaterialPageRoute(builder: (context) => page));
}

void pop(BuildContext context) {
  return Navigator.of(context).pop(context);
}
