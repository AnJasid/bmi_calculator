import 'package:flutter/material.dart';

class HeightSection extends StatefulWidget {
  const HeightSection({super.key});

  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  String _selectedHeightUnit = 'Centimeters (cm)';
  int _countHeight = 0;
  final List<String> _heightUnits = [
    'Centimeters (cm)',
    'Meters (m)',
    'Feet (ft)',
    'Inches (in)',
  ];

  // this method is to increase the number of height
  void _incCountHeight() {
    setState(() {
      _countHeight = _countHeight + 1;
    });
  }

// this method is to decrease the number of height
  void _decCountHeight() {
    if (_countHeight > 0) {
      setState(() {
        _countHeight = _countHeight - 1;
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
              // icon button to decrease number of height
              GestureDetector(
                onTap: _decCountHeight,
                child: const Icon(Icons.do_disturb_on),
              ),
              // show the number of weight
              Text(
                _countHeight.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              // icon button to increase number of height
              GestureDetector(
                onTap: _incCountHeight,
                child: const Icon(Icons.add_circle_outlined),
              ),
            ],
          ),
        ),
        // units of height section
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          width: 165,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: _selectedHeightUnit,
              icon: const Icon(
                Icons.arrow_drop_down_circle_rounded,
                color: Colors.black,
              ),
              items: _heightUnits
                  .map(
                    (units) => DropdownMenuItem(
                      value: units,
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        units,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
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
                  _selectedHeightUnit = value;
                });
              },
            ),
          ),
        )
      ],
    );
  }
}
