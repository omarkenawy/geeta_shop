import 'package:flutter/material.dart';

class Customtextformfield extends StatelessWidget {
  const Customtextformfield({
    super.key,
    required this.hintText,
    this.validator,
    this.onSave,
    this.obscureText = false,
    this.keyboardType,
    this.PrefIcon,
    this.TextColor,
    this.TextSize,
    this.SufIcon,
  });

  final String hintText;
  final String? Function(String? value)? validator;
  final FormFieldSetter? onSave;
  final Icon? PrefIcon;
  final Icon? SufIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Color? TextColor;
  final double? TextSize;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
        hintText: hintText,
        hintStyle: TextStyle(color: TextColor, fontSize: TextSize),
        prefixIcon: PrefIcon,
        suffixIcon: SufIcon,
      ),
      validator: validator,
      onSaved: onSave,
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }
}
