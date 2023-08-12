import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnLabel;
  final void Function() onTap;

  const CustomButton({
    super.key,
    required this.btnLabel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            btnLabel,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
