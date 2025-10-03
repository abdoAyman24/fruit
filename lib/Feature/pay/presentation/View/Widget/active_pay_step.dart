import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';

class ActivePayStep extends StatelessWidget {
  const ActivePayStep({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        CircleAvatar(
          radius: 11.5,
          backgroundColor: appColor.primary,
          child: Icon(Icons.check, size: 18, color: Colors.white),
        ),
        const SizedBox(width: 4),
        Text(
          title,
          style: AppText.bold13.copyWith(color: appColor.KLightprimary),
        ),
      ],
    );
  }
}
