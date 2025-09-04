import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.keyboardType,
    this.widget,
  });

  final String hint;
  final TextInputType keyboardType;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
    
      cursorColor: appColor.primary,
      showCursor: true,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        suffixIcon: widget,
        filled: true,
        fillColor: Color(0xFFF9FAFA),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(width: 1.0, color: Color(0xFFE6E9E9)),
        ),

        hint: Text(
          hint,
          style: AppText.bold16.copyWith(color: Color(0xFF949D9E)),
        ),
      ),
    );
  }
}
