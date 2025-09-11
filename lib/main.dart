import 'package:firebase_app_check/firebase_app_check.dart';

import 'firebase_options.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruit_hup/Core/helper_function/on_generate_route.dart';
import 'package:fruit_hup/Core/services/bloc_observer.dart';
import 'package:fruit_hup/Core/services/service_locator.dart';
import 'package:fruit_hup/Core/services/shared_prefrences_singlton.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Feature/Splash/Presentaion/View/splash_view.dart';

import 'package:fruit_hup/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = CustomBlocObserver();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
   await FirebaseAppCheck.instance.activate(
    androidProvider: AndroidProvider.playIntegrity,
  );
  setupGetIt();
  // Ideal time to initialize await Firebase.initializeApp();

  // Ideal time to initialize

  SharedPreferencesSingleton.init();

  runApp(const FruitHup());
}

class FruitHup extends StatelessWidget {
  const FruitHup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'cairo',
        primaryColor: appColor.primary,
        scaffoldBackgroundColor: Colors.white,
      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}
