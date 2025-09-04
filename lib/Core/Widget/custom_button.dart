import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';

class CusttomButtom extends StatelessWidget {
  const CusttomButtom({super.key, required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
        onPressed: onPressed,
       
        style: TextButton.styleFrom(
          backgroundColor: appColor.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
         child: Text(text, style:AppText.bold16.copyWith(color: Colors.white),),
      ),
      
    );
  }
}
