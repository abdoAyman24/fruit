import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/Splash/Presentaion/View/widget/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
 static const String routeName = 'splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}