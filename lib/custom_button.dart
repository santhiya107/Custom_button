library custom_button;

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String value;
  final double fontsize;
  final Color color;
  final String? fontfamily;
  final Function()? onPressed;

  const CustomButton({
    required this.value,
    required this.fontsize,
    required this.color,
    this.fontfamily,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      onPressed: onPressed,
      child: Text(
        value,
        style: TextStyle(fontSize: fontsize, color: color, fontFamily: fontfamily),
      ),
    );
  }
}
