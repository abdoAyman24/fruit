import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider()),
        SizedBox(width: 18),
        Text('أو', style: AppText.semiBold16),
        SizedBox(width: 18),
        Expanded(child: Divider()),
      ],
    );
  }
}
