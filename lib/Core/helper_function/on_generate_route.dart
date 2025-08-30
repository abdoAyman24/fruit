import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/Splash/Presentaion/View/splash_view.dart';
import 'package:fruit_hup/Feature/onBording/Presentation/View/on_bording_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
      case OnBordingView.routeName:
      return MaterialPageRoute(builder: (context) => OnBordingView());
    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold());
  }
}