import 'package:flutter/material.dart';

class GenderSection extends StatefulWidget {
  const GenderSection({super.key});

  @override
  State<GenderSection> createState() => _GenderSectionState();
}

class _GenderSectionState extends State<GenderSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: 150,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[700],
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
        Container(
          height: 150,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[700],
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
      ],
    );
  }
}
