// ignore_for_file: prefer_const_constructors

import 'package:calculator1/screens/splashScreen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        theme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        home: splashScreen(),
      ),
    );
  }
}
