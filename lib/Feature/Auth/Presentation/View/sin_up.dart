import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/Widget/custom_appbar.dart';
import 'package:fruit_hup/Core/services/service_locator.dart';

import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/sin_up_body.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/manager/signUp%20Cubit/cubit/sin_up_cubit.dart';
import 'package:fruit_hup/Feature/Auth/domain/Repo/auth_repo.dart';

class SinUp extends StatelessWidget {
  const SinUp({super.key});
  static const String routeName = 'sin_up';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SinUpCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: BuildCustomAppBar(context, 'حساب جديد'),
        body: SafeArea(child: SinUpBody()),
      ),
    );
  }
}
