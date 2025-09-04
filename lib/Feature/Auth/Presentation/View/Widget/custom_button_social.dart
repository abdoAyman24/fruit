import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';

class CustomButtonSocial extends StatelessWidget {
  const CustomButtonSocial({
    super.key,
    required this.image,
    required this.onPressed,
    required this.text,
  });

  final String image;
  final VoidCallback? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Color(0xFFDCDEDE), width: 1.0),
          ),
        ),
        onPressed: onPressed,
        child: ListTile(
          visualDensity: const VisualDensity(vertical: VisualDensity.minimumDensity),
          leading: SvgPicture.asset(image),
          title: Text(
            text,
            textAlign: TextAlign.center,
            style: AppText.semiBold16,
          ),
        ),
      ),
    );
  }
}
