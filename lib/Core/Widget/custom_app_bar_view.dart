import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/Widget/notification_app_bar.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';

class CustomAppBarView extends StatelessWidget {
  const CustomAppBarView({
    super.key,
    required this.title,
    this.showBackArrow = true,  this.showNotification= true,
  });
  final String title;
  final bool showBackArrow;
  final bool showNotification;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Visibility(
          visible: showBackArrow,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        Text(title, textAlign: TextAlign.center, style: AppText.bold19),
        Visibility(
          visible: showNotification,
          child: NotificationAppBar()),
      ],
    );
  }
}
