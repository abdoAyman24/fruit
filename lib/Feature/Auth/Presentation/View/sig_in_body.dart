import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/Widget/custom_appbar.dart';
import 'package:fruit_hup/Core/services/service_locator.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/sig_in_body_bloc_consumar.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/manager/signIn%20Cubit/sign_in_cubit.dart';
import 'package:fruit_hup/Feature/Auth/domain/Repo/auth_repo.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});
  static const String routeName = 'LogIn';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: BuildCustomAppBar(context, "تسجيل الدخول"),

        body: SigInBodyBlocConsumar(),
      ),
    );
  }
}

