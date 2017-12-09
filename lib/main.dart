import 'package:flutter/material.dart';
import 'screens/ui_main.dart';

void main()
{
  runApp
  (
    new MaterialApp
    (
      title: "Deep web e-store",
      theme: new ThemeData
      (
        primarySwatch: new MaterialColor
        (
          0xFFFFFFFF,
          const <int, Color>
          {
            50: const Color(0xFFFFFFFF),
            100: const Color(0xFFFFFFFF),
            200: const Color(0xFFFFFFFF),
            300: const Color(0xFFFFFFFF),
            400: const Color(0xFFFFFFFF),
            500: const Color(0xFFFFFFFF),
            600: const Color(0xFFFFFFFF),
            700: const Color(0xFFFFFFFF),
            800: const Color(0xFFFFFFFF),
            900: const Color(0xFFFFFFFF),
          },
        )
      ),
      home: new UIMain()
    )
  );
}