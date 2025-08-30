import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/onBording/Presentation/View/Widget/on_bording_view_body.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});
  static const String routeName = '/onBoarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const OnBordingViewBody(),
    );
  }
}