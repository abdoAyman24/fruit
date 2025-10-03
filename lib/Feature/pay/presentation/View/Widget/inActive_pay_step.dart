import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';

class InactivePayStep extends StatelessWidget {
  const InactivePayStep({super.key, required this.title, required this.index});
  final String title;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 10.5,
          backgroundColor: const Color(0xFFF2F3F3),
          child: Text('$index',style: AppText.semiBold13,),
        ),
        const SizedBox(width: 4),
        Text(
          title,
          style: AppText.bold13.copyWith(color: const Color(0xFFAAAAAA)),
        ),
      ],
    );
  }
}
