import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/Widget/custom_appbar.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/sin_up_body.dart';

class SinUp extends StatelessWidget {
  const SinUp({super.key});
 static const String routeName = 'sin_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildCustomAppBar(context, 'حساب جديد'),
      body: SafeArea(child: SinUpBody()),
    );
  }
}