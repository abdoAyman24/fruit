import 'package:flutter/material.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/sig_in_body.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/sin_up.dart';
import 'package:fruit_hup/Feature/BestSelling/Presentation/View/best_selling_view.dart';
import 'package:fruit_hup/Feature/Home/Presentation/Views/main_view.dart';
import 'package:fruit_hup/Feature/Splash/Presentaion/View/splash_view.dart';
import 'package:fruit_hup/Feature/onBording/Presentation/View/on_bording_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => MainView());
    case SinUp.routeName:
      return MaterialPageRoute(builder: (context) => SinUp());
    case BestSellingView.routeName:
      return MaterialPageRoute(builder: (context) => BestSellingView());
    case LogIn.routeName:
      return MaterialPageRoute(builder: (context) => LogIn());

    case OnBordingView.routeName:
      return MaterialPageRoute(builder: (context) => OnBordingView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
