import 'package:bmi_calculator/components/buttons.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/sections/age_section.dart';
import 'package:bmi_calculator/sections/height_section.dart';
import 'package:bmi_calculator/sections/weight_section.dart';
import 'package:bmi_calculator/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

import 'package:bmi_calculator/sections/gender_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 40, 25, 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // app title
            const Text(
              'BMI Calculator',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            // gender section
            const Text(
              'Gender',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            const GenderSection(),
            const SizedBox(height: 30),
            // weight section
            const Text(
              'Weight',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            const WeightSection(),
            const SizedBox(height: 30),
            // height section
            const Text(
              'Height',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            const HeightSection(),
            const SizedBox(height: 30),
            // age section
            const Text(
              'Age',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            const AgeSection(),
            const SizedBox(height: 60),
            // calculate button
            CustomButton(
              btnLabel: 'Calculate',
              onTap: () {
                // to move to result screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResultScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
