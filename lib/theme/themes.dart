import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  iconTheme: const IconThemeData(color: Colors.black),
  appBarTheme: const AppBarTheme(color: Colors.white),
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Colors.white,
    onBackground: Colors.white,
    primary: Colors.black,
    secondary: Colors.white,
    onPrimary: Color.fromARGB(255, 63, 63, 63),
    onSecondary: Color.fromARGB(255, 202, 202, 202),
  ),
);

ThemeData darkMode = ThemeData(
  iconTheme: const IconThemeData(color: Colors.white),
  appBarTheme: const AppBarTheme(color: Colors.black),
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    background: Colors.black,
    onBackground: Color.fromARGB(255, 33, 33, 33),
    primary: Colors.white,
    secondary: Colors.black,
    onPrimary: Colors.grey,
    onSecondary: Color.fromARGB(255, 53, 53, 53),
  ),
);



// color: Theme.of(context).brightness == Brightness.light
            // ? Theme.of(context).colorScheme.background
            // : Colors.grey[900],