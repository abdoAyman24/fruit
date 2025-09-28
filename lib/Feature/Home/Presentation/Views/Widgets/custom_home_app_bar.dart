import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/Widget/notification_app_bar.dart';
import 'package:fruit_hup/Core/helper_function/get_user_data.dart';
import 'package:fruit_hup/Core/utils/app_icon.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(Assets.imageProfileImage),
      trailing: Container(
        width: 34,
        height: 34,
        decoration: ShapeDecoration(
          color: const Color(0xFFEEF8ED) /* green-50 */,
          shape: OvalBorder(),
        ),
        child: NotificationAppBar(),
      ),
      title: Text(
        'صباح الخير !..',
        style: AppText.regular16.copyWith(color: const Color(0xFF949D9E)),
      ),
      subtitle: Text(
        getUser().name,
        style: AppText.bold16.copyWith(color: const Color(0xFF0C0D0D)),
      ),
    );
  }
}
