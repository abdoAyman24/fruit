import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';

class DontHaveAnAccountText extends StatelessWidget {
  const DontHaveAnAccountText({super.key, required this.onPress});
 final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لا تمتلك حساب؟',
          style: AppText.semiBold16.copyWith(color: Color(0xFF949D9E)),
        ),
        SizedBox(width: 4),
        GestureDetector(
          onTap: onPress,
          child: Text(
            'قم بإنشاء حساب',
            style: AppText.semiBold16.copyWith(color: appColor.primary),
          ),
        ),
      ],
    );
  }
}
