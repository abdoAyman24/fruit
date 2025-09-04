import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/Widget/custom_appbar.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/log_in_body.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});
 static const String routeName = 'LogIn';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: BuildCustomAppBar(context, "تسجيل الدخول"),

      body: LogInBody(),
    );
  }


}