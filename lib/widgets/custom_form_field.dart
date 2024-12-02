import 'package:flutter/material.dart';

class CustomInputFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefix;
  final Widget? prefixIcon;
  final int? maxLines;
  final TextInputType? keyboardType;

  const CustomInputFormField({
    super.key,
    this.controller,
    this.hintText,
    this.suffixIcon,
    this.prefix,
    this.prefixIcon,
    this.maxLines = 1,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefix: prefix,
        isDense: true,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        hintText: hintText,
        // hintStyle: AppFonts.font(
        //   color: Colors.grey.shade700,
        //   fontSize: 14,
        // ),
      ),
      maxLines: maxLines,
    );
  }
}
