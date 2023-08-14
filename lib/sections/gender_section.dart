import 'package:flutter/material.dart';

enum Gender { male, female, none }

class GenderSection extends StatefulWidget {
  const GenderSection({super.key});

  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
  Gender selectedGender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              selectedGender = Gender.male;
            });
          },
          child: Container(
            height: 150,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[700],
              border: Border.all(
                color: selectedGender == Gender.male
                    ? Colors.green
                    : Colors.transparent,
                width: 3,
              ),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6),
                  ),
                  child: Image.asset('assets/images/male.png'),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.check,
                    color: selectedGender == Gender.male
                        ? Colors.green
                        : Colors.transparent,
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Male',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              selectedGender = Gender.female;
            });
          },
          child: Container(
            height: 150,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[700],
              border: Border.all(
                color: selectedGender == Gender.female
                    ? Colors.green
                    : Colors.transparent,
                width: 3,
              ),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6),
                  ),
                  child: Image.asset('assets/images/female.png'),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.check,
                    color: selectedGender == Gender.female
                        ? Colors.green
                        : Colors.transparent,
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Female',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
