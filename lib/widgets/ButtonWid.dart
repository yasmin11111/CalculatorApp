// ignore_for_file: sort_child_properties_last

import 'package:calculator1/constants/constants.dart';
import 'package:flutter/material.dart';

class ButtonWid extends StatelessWidget {
  String T;
  Color c;
  Color ColoText;
  double? w;
  Function Callback;
  ButtonWid(
      {required this.T,
      required this.c,
      required this.w,
      required this.ColoText,
      required this.Callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Callback(T);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 80,
          width: w,
          child: Center(
              child: Text(
            "$T",
            style: TextStyle(
                color: ColoText, fontSize: 30, fontWeight: FontWeight.bold),
          )),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            shape: BoxShape.rectangle,
            color: c,
          ),
        ),
      ),
    );
  }
}
