import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Core/utils/app_icon.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isChecked, required this.onChanged,});
  final bool isChecked;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: () {
      onChanged(!isChecked);
    },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: 24,
        height: 24,
        decoration: ShapeDecoration(
          color: isChecked ? appColor.primary : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1.50,
              color: isChecked ? Colors.transparent : const Color(0xFFDCDEDE),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: isChecked
            ? SvgPicture.asset(Assets.imageCheckIcon)
            : const SizedBox(),
      ),
    );
  }
}
