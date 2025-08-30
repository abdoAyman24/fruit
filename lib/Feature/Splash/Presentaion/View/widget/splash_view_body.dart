import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hup/Core/utils/app_icon.dart';
import 'package:fruit_hup/Feature/onBording/Presentation/View/on_bording_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  initState() {

    super.initState();
    navigatorToOnBoarding();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: Localizations.localeOf(context).languageCode == 'ar' ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            
            SvgPicture.asset(Assets.imagePlantImage),
          ],
        ),
        SvgPicture.asset(Assets.imageLogoImage),
        SvgPicture.asset(Assets.imageBottomImage, fit: BoxFit.fill),

      ],
    );
  }
  void navigatorToOnBoarding() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnBordingView.routeName);
    });
  }
}
