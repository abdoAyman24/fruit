import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup/Core/utils/app_icon.dart';

class NotificationAppBar extends StatelessWidget {
  const NotificationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 8),
      child: Container(
        width: 34,
        height: 34,
        decoration: ShapeDecoration(
          color: const Color(0xFFEEF8ED) /* green-50 */,
          shape: OvalBorder(),
        ),
        child: Center(
          child: Stack(
            children: [
              SvgPicture.asset(Assets.imageNotification),
              Positioned(
                top: 0,
                left: 8,
                child: Container(
                  width: 4.17,
                  height: 4.17,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF24035),
                    shape: OvalBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
