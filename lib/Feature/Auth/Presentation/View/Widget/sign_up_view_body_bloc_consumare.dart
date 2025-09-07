import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/helper_function/builder_Snack_Bare.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/sin_up_body.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/manager/signUp%20Cubit/cubit/sin_up_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpViewBodyBlocConsumar extends StatelessWidget {
  const SignUpViewBodyBlocConsumar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SinUpCubit, SinUpState>(
      listener: (context, state) {
        if (state is SignUpFailure) {
          builderSnackBare(context, state.errorMessage);
        }
         if (state is SinUpSucces) {
          builderSnackBare(context, 'تم إنشاء الحساب بنجاح ');
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignUpLoading ? true : false,
          child: SinUpViewBody(),
        );
      },
    );
  }

  
}
