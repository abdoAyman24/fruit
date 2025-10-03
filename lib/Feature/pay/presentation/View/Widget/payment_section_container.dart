import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';
import 'package:fruit_hup/Core/utils/container_decoration.dart';

class PaymentSectionContainer extends StatelessWidget {
  const PaymentSectionContainer({
    super.key,
    required this.title,
    required this.widget,
  });
  final String title;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppText.bold13),
        const SizedBox(height: 8),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
          decoration: ContainerDecoration.greyBoxDecoration,
          child: widget,
        ),
      ],
    );
  }
}
