import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/Widget/custom_button.dart';
import 'package:fruit_hup/Core/Widget/custom_text_form_field.dart';
import 'package:fruit_hup/Core/utils/app_icon.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/custom_button_social.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/custom_divider.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/dont_have_an_account_text.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/password_field.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/sin_up.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/manager/signIn%20Cubit/sign_in_cubit.dart';

class SingInBody extends StatefulWidget {
  const SingInBody({super.key});

  @override
  State<SingInBody> createState() => _SingInBodyState();
}

class _SingInBodyState extends State<SingInBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    CustomTextFormField(
                      onSave: (value) {
                        email = value!;
                      },
                      hint: 'البريد الإلكتروني',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    PasswordField(
                      onSave: (value) {
                        password = value!;
                      },
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "نسيت كلمة المرور؟",
                            style: AppText.semiBold16.copyWith(
                              color: Color(0xFF2D9F5D),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 33),
                    //Navigate to Home
                    CusttomButtom(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();
                          context
                              .read<SignInCubit>()
                              .SignInWithEmailAndPassword(email, password);
                        } else {
                          autovalidateMode = AutovalidateMode.always;
                        }
                      },
                      text: "تسجيل الدخول",
                    ),
                    const SizedBox(height: 33),
                    const CustomDivider(),
                    const SizedBox(height: 16),
                    //Navigat to SignUp
                    DontHaveAnAccountText(
                      onPress: () {
                        Navigator.pushNamed(context, SinUp.routeName);
                      },
                    ),
                    const SizedBox(height: 33),
                    //Navigate to Social Media Auth
                    CustomButtonSocial(
                      image: Assets.imageGoogleIcon,
                      text: 'تسجيل بواسطة جوجل',
                      onPressed: () {
                        context.read<SignInCubit>().SignInWithGoogle();
                      },
                    ),
                    const SizedBox(height: 16),
                    CustomButtonSocial(
                      image: Assets.imageFaceBookIcon,
                      text: 'تسجيل بواسطة فيسبوك',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 16),
                    CustomButtonSocial(
                      image: Assets.imageAppleIcon,
                      text: 'تسجيل بواسطة أبل',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
