  import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/Widget/notification_app_bar.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';

AppBar buildAppbarBestSeller() {
    return AppBar(
      elevation: 0.0,
      centerTitle: true,
      actions: [NotificationAppBar()],
      title: Text(
        'الأكثر مبيعًا',
        textAlign: TextAlign.center,
        style: AppText.bold19,
      ),
    );
  }