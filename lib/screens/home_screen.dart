import 'package:flutter/material.dart';

import 'package:bmi_calculator/sections/gender_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.menu),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: const Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 25,
              top: 15,
            ),
            child: Text(
              'BMI Calculator',
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          GenderSection(),
        ],
      ),
    );
  }
}
