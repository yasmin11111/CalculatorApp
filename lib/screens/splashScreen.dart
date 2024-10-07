// ignore_for_file: camel_case_types, prefer_const_constructors, file_names

import 'package:calculator1/screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 6),
      () {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return Home();
          },
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff445a63),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: SvgPicture.asset(
                  'assets/Calculator-cuate (1).svg',
                  height: 200,
                  width: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Developed By Yasmin Aslaman",
                  style: TextStyle(color: Color(0xffdbdbdb)),
                ),
              ),
            ],
          ),
        ));
  }
}
