import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';

class FeaturerItemButton extends StatelessWidget {
  const FeaturerItemButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(4),
      child: SizedBox(
        width: 116,
        height: 32,
        child: TextButton(
          onPressed: onPressed,
      
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
          child: FittedBox(
            child: Text(
              'تسوق الان',
              style: AppText.bold13.copyWith(color: appColor.primary),
            ),
          ),
        ),
      ),
    );
  }
}
