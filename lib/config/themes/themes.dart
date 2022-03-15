// proprieter pour theme claire
import 'package:flutter/material.dart';
import 'package:woo_theme_mode/woo_theme_mode.dart';

final themeClair = WooTheme.modeClair(
  scaffolBackground: const Color.fromARGB(255, 255, 255, 255),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(const EdgeInsets.all(20.0),),
    ),
  ),
);

// proprieter pour theme dark
final themeDark = WooTheme.modeDark(
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(const EdgeInsets.all(50.0),),
    ),
  ),
  scaffolBackground: const Color.fromARGB(255, 54, 54, 54),
);