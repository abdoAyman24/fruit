import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup/Core/Widget/custom_button.dart';
import 'package:fruit_hup/Core/Widget/custom_text_form_field.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/have_an_acount.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/password_field.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/terms_condition_widget.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/manager/signUp%20Cubit/cubit/sin_up_cubit.dart';

class SinUpViewBody extends StatefulWidget {
  const SinUpViewBody({super.key});

  @override
  State<SinUpViewBody> createState() => _SinUpViewBodyState();
}

class _SinUpViewBodyState extends State<SinUpViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String userName, password, email;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(height: 24),
              CustomTextFormField(
                onSave: (value) {
                  userName = value!;
                },
                hint: 'الاسم بالكامل',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                onSave: (value) {
                  email = value!;
                },
                hint: 'البريد الإلكترونى',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              PasswordField(
                onSave: (value) {
                  password = value!; 
                },
              ),
              const SizedBox(height: 16),
              TermsConditionWidget(),
              const SizedBox(height: 42),
              CusttomButtom(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SinUpCubit>().CreateUserWithEmaiAndPAssword(
                      email: email,
                      password: password,
                      name: userName,
                    );
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'إنشاء حساب جديد',
              ),
              const SizedBox(height: 38),
              haveAnAccount(
                onPress: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
