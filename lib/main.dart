import 'package:bmi_calculator/screens/result.dart';
import 'package:flutter/material.dart';

import "screens/home_screen.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HomeScreen(),
        "/result": (context) => Result(),
      },
      theme: ThemeData(
        sliderTheme: SliderThemeData(
          thumbColor: Colors.blue,
          activeTrackColor: Colors.blue[700],
          inactiveTrackColor: Colors.blue[200],
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        scaffoldBackgroundColor: const Color(0Xff0C0A1B),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        colorScheme: ColorScheme(
          background: Colors.red,
          brightness: Brightness.light,
          error: Colors.green,
          onBackground: Colors.purple,
          onError: Colors.red.shade100,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.blue,
          primary: const Color(0xff1E1B31),
          secondary: Colors.yellow,
          surface: Colors.red,
        ),
      ),
      initialRoute: "/",
    );
  }
}
