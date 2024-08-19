import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.Buttoncolor,
    this.ButtonTextColor,
    required this.BorderColor,
    required this.Wsize,
    required this.Hsize,
    this.TextColor,
  });

  final VoidCallback onPressed;
  final String text;
  final Color? Buttoncolor;
  final Color? ButtonTextColor;
  final Color BorderColor;
  final double Wsize;
  final double Hsize;
  final Color? TextColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 200,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            fixedSize: Size(Wsize, Hsize),
            backgroundColor: Buttoncolor,
            foregroundColor: ButtonTextColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              side: BorderSide(color: BorderColor),
            )),
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
