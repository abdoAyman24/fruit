import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';

class haveAnAccount extends StatelessWidget {
  const haveAnAccount({super.key, required this.onPress});
 final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'تمتلك حساب بالفعل؟ ',
          style: AppText.semiBold16.copyWith(color: Color(0xFF949D9E)),
        ),
        SizedBox(width: 4),
        GestureDetector(
          onTap: onPress,
          child: Text(
            'تسجيل دخول',
            style: AppText.semiBold16.copyWith(color: appColor.primary),
          ),
        ),
      ],
    );
  }
}
