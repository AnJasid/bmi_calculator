import 'package:bmi_calculator/sections/weight_section.dart';
import 'package:flutter/material.dart';

import 'package:bmi_calculator/sections/gender_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(25, 18, 25, 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // app title
            Text(
              'BMI Calculator',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            // gender section
            Text(
              'Gender',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            GenderSection(),
            SizedBox(height: 30),
            // weight section
            Text(
              'Weight',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            WeightSection(),
          ],
        ),
      ),
    );
  }
}
