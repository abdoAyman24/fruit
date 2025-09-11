import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/helper_function/builder_Snack_Bare.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/log_in_body.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/manager/signIn%20Cubit/sign_in_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SigInBodyBlocConsumar extends StatelessWidget {
  const SigInBodyBlocConsumar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInFailuer) {
          builderSnackBare(context, state.errorMessage);
        }if(state is SignInSuccess){
          builderSnackBare(context, 'تم تسجيل الدخول بنجاح');
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(inAsyncCall: state is SignInLoad ? true : false, child: SingInBody());
      },
    );
  }
}
