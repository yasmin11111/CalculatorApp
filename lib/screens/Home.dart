// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:calculator1/constants/constants.dart';
import 'package:calculator1/widgets/ButtonWid.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String exp = "";
  double n1 = 0;
  double n2 = 0;
  String history = '';
  String op = '';

  void numclick(String s) {
    if (s == "+" || s == "-" || s == "*" || s == "/" || s == "%") {
      op = s;
      n1 = double.parse(exp);
      setState(() {
        exp = "";
        history = n1.toString();
        history += s;
      });
    } 
    
    else if (s == "AC") {
      setState(() {
        exp = "";
        history = "";
      });



    } else if (s == "C") {
      setState(() {
        exp = "";
      });
    } else if (s == "C") {
      setState(() {
        exp = "";
      });
    } else if (s == '.') {
      if (exp.contains('.')) {
        return;
      } else {
        setState(() {
          exp += '.';
        });
      }
    } else if (s == "=") {
      n2 = double.parse(exp);
      if (op == "+") {
        exp = (n1 + n2).toString();
      } else if (op == "-") {
        exp = (n1 - n2).toString();
      } else if (op == "%") {
        exp = (n1 % n2).toString();
      } else if (op == "*") {
        exp = (n1 * n2).toString();
      } else if (op == "/") {
        n2 == 0 ? exp = "Can't Divide By zero  " : exp = (n1 / n2).toString();
      }
      setState(() {
        history = n1.toString() + op + n2.toString() + "=";
      });
      
      n1 = 0;
      n2 = 0;
      op = "";
    } else {
      setState(() {
        exp += s;
      });
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.calculate_outlined,
            color: Colors.white,
            size: 27,
          ),
          SizedBox(
            width: 90,
          )
        ],
        backgroundColor: Color(0xff455a64),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Calculator",
          style: Constants.style1,
        ),
      ),
      backgroundColor: Color(0xff17e1e5),
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: Constants.d,
                height: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('$history', style: Constants.style1),
                    ),
                    Divider(
                      indent: 15,
                      endIndent: 15,
                      thickness: 1,
                      color: Color.fromARGB(255, 134, 206, 236),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '$exp',
                        style: Constants.style1,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ButtonWid(
                  Callback: numclick,
                  T: "AC",
                  c: Color.fromARGB(255, 255, 255, 255),
                  w: 80,
                  ColoText: Color.fromARGB(255, 0, 0, 0),
                ),
                ButtonWid(
                    Callback: numclick,
                    T: "C",
                    c: Color.fromARGB(255, 255, 255, 255),
                    w: 80,
                    ColoText: Color.fromARGB(255, 0, 0, 0)),
                ButtonWid(
                    Callback: numclick,
                    T: "%",
                    c: Color(0xff1afbff),
                    w: 80,
                    ColoText: Colors.black),
                ButtonWid(
                    Callback: numclick,
                    T: "/",
                    c: Color(0xff1afbff),
                    w: 80,
                    ColoText: Colors.black),
              ],
            ),
            Row(
              children: [
                ButtonWid(
                    Callback: numclick,
                    T: "7",
                    c: Color(0xff455a64),
                    w: 80,
                    ColoText: const Color.fromARGB(255, 255, 255, 255)),
                ButtonWid(
                    Callback: numclick,
                    T: "8",
                    c: Color(0xff455a64),
                    w: 80,
                    ColoText: const Color.fromARGB(255, 255, 255, 255)),
                ButtonWid(
                    Callback: numclick,
                    T: "9",
                    c: Color(0xff455a64),
                    w: 80,
                    ColoText: const Color.fromARGB(255, 255, 255, 255)),
                ButtonWid(
                    Callback: numclick,
                    T: "*",
                    c: Color.fromARGB(255, 255, 255, 255),
                    w: 80,
                    ColoText: Colors.black),
              ],
            ),
            Row(
              children: [
                ButtonWid(
                    Callback: numclick,
                    T: "4",
                    c: Color(0xff455a64),
                    w: 80,
                    ColoText: const Color.fromARGB(255, 255, 255, 255)),
                ButtonWid(
                    Callback: numclick,
                    T: "5",
                    c: Color(0xff455a64),
                    w: 80,
                    ColoText: const Color.fromARGB(255, 255, 255, 255)),
                ButtonWid(
                    Callback: numclick,
                    T: "6",
                    c: Color(0xff455a64),
                    w: 80,
                    ColoText: const Color.fromARGB(255, 255, 255, 255)),
                ButtonWid(
                    Callback: numclick,
                    T: "-",
                    c: Color.fromARGB(255, 251, 254, 255),
                    w: 80,
                    ColoText: Colors.black),
              ],
            ),
            Row(
              children: [
                ButtonWid(
                    Callback: numclick,
                    T: "1",
                    c: Color(0xff455a64),
                    w: 80,
                    ColoText: const Color.fromARGB(255, 255, 255, 255)),
                ButtonWid(
                    Callback: numclick,
                    T: "2",
                    c: Color(0xff455a64),
                    w: 80,
                    ColoText: const Color.fromARGB(255, 255, 255, 255)),
                ButtonWid(
                    Callback: numclick,
                    T: "3",
                    c: Color(0xff455a64),
                    w: 80,
                    ColoText: const Color.fromARGB(255, 255, 255, 255)),
                ButtonWid(
                    Callback: numclick,
                    T: "+",
                    c: Color.fromARGB(255, 255, 255, 255),
                    w: 80,
                    ColoText: Colors.black),
              ],
            ),
            Row(
              children: [
                ButtonWid(
                    Callback: numclick,
                    T: "0",
                    c: Color(0xff455a64),
                    w: 177,
                    ColoText: const Color.fromARGB(255, 255, 255, 255)),
                ButtonWid(
                    Callback: numclick,
                    T: ".",
                    c: Color.fromARGB(255, 255, 255, 255),
                    w: 80,
                    ColoText: Colors.black),
                ButtonWid(
                    Callback: numclick,
                    T: "=",
                    c: Color.fromARGB(255, 254, 255, 255),
                    w: 80,
                    ColoText: Colors.black),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// Color(0xff455a64