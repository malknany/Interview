import 'package:flutter/material.dart';

Future<void> showSnackBar({ required BuildContext context, required String message,}) async {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
  ));
}