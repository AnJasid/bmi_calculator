import 'package:flutter/material.dart';

class AgeSection extends StatefulWidget {
  const AgeSection({super.key});

  @override
  State<AgeSection> createState() => _AgeSectionState();
}

class _AgeSectionState extends State<AgeSection> {
  int _countAge = 0;

  void _incCountAge() {
    setState(() {
      _countAge++;
    });
  }

  void _decCountAge() {
    if (_countAge > 0) {
      setState(() {
        _countAge--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 35,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // icon button to decrease number of age
        children: [
          GestureDetector(
            onTap: _decCountAge,
            child: const Icon(
              Icons.do_disturb_on,
              color: Colors.black,
            ),
          ),
          // show the number of age
          Text(
            _countAge.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          // icon button to increase number of age
          GestureDetector(
            onTap: _incCountAge,
            child: const Icon(
              Icons.add_circle_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
