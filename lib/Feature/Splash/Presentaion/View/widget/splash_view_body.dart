import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hup/Core/services/firebase_auth_service.dart';
import 'package:fruit_hup/Core/services/shared_prefrences_singlton.dart';
import 'package:fruit_hup/Core/utils/app_icon.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/sig_in_body.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/main_view.dart';
import 'package:fruit_hup/Feature/onBording/Presentation/View/on_bording_view.dart';
import 'package:fruit_hup/constance.dart';

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
          mainAxisAlignment:
              Localizations.localeOf(context).languageCode == 'ar'
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [SvgPicture.asset(Assets.imagePlantImage)],
        ),
        SvgPicture.asset(Assets.imageLogoImage),
        SvgPicture.asset(Assets.imageBottomImage, fit: BoxFit.fill),
      ],
    );
  }

  void navigatorToOnBoarding() {
    Future.delayed(const Duration(seconds: 3), () async {
      SharedPreferencesSingleton.getBool(KisOnBordingViewSeen);
      var isSignIn = await FirebaseAuthService().isSignIn();

      if (SharedPreferencesSingleton.getBool(KisOnBordingViewSeen) == true) {
        if (isSignIn == true) {
          Navigator.pushReplacementNamed(context, MainView.routeName);
        } else {
          Navigator.pushReplacementNamed(context, LogIn.routeName);
        }
      } else {
        Navigator.pushReplacementNamed(context, OnBordingView.routeName);
      }
    });
  }
}
