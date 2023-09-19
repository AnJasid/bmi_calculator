import 'package:flutter/material.dart';

class WeightSection extends StatefulWidget {
  const WeightSection({super.key});

  @override
  State<WeightSection> createState() => _WeightSectionState();
}

class _WeightSectionState extends State<WeightSection> {
  String _selectedWeightUnit = 'Kilograms (KG)';
  int _countWeight = 0;
  final List<String> _weightUnits = [
    'Kilograms (KG)',
    'Pounds (lb)',
  ];
  // this method is to increase the number of weight
  void _incCountWeight() {
    setState(() {
      _countWeight++;
    });
  }

  // this method is to decrease the number of weight
  void _decCountWeight() {
    if (_countWeight > 0) {
      setState(() {
        _countWeight--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          width: 200,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // icon button to decrease number of weight
              GestureDetector(
                onTap: _decCountWeight,
                child: const Icon(Icons.do_disturb_on),
              ),
              // show the number of weight
              Text(
                _countWeight.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              // icon button to increase number of weight
              GestureDetector(
                onTap: _incCountWeight,
                child: const Icon(Icons.add_circle_outlined),
              ),
            ],
          ),
        ),
        // units of weight section
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          width: 133,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: _selectedWeightUnit,
              icon: const Icon(
                Icons.arrow_drop_down_circle_rounded,
                color: Colors.black,
              ),
              items: _weightUnits
                  .map(
                    (units) => DropdownMenuItem(
                      value: units,
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        units,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                if (value == null) {
                  return;
                }
                setState(() {
                  _selectedWeightUnit = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
