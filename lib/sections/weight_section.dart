import 'package:flutter/material.dart';

class WeightSection extends StatefulWidget {
  const WeightSection({super.key});

  @override
  State<WeightSection> createState() => _WeightSectionState();
}

class _WeightSectionState extends State<WeightSection> {
  final String _selectedWeightUnits = 'Pounds (lb)';
  void _weightUnits() {}

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // number of weight section
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          width: 200,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.do_disturb_on),
              Text(
                '0',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(Icons.add_circle_outlined),
            ],
          ),
        ),
        // units of weight section
        GestureDetector(
          onTap: _weightUnits,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            width: 150,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _selectedWeightUnits,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.arrow_drop_down_circle)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
