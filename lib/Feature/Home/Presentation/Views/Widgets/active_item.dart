import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.item, required this.name});
  final String item;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 99,
        height: 30,
        decoration: ShapeDecoration(
          color: const Color(0xFFEEEEEE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: ShapeDecoration(
                color: appColor.primary /* Green1-500 */,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Center(child: SvgPicture.asset(item)),
            ),
            SizedBox(width: 4),
            Text(
              name,
              style: AppText.semiBold11.copyWith(color: appColor.primary),
            ),
          ],
        ),
      ),
    );
  }
}