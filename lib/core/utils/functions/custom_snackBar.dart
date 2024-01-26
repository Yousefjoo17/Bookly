import 'package:flutter/material.dart';

void customSnackBar(BuildContext context, String message,
    {Duration duration = const Duration(seconds: 2)}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: duration,
    ),
  );
}