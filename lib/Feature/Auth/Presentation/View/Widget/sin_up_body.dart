import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/Widget/custom_button.dart';
import 'package:fruit_hup/Core/Widget/custom_text_form_field.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/have_an_acount.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/terms_condition_widget.dart';

class SinUpBody extends StatelessWidget {
  const SinUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 24),
            CustomTextFormField(
              hint: 'الاسم بالكامل',
              keyboardType: TextInputType.name,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hint: 'البريد الإلكترونى',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hint: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              widget: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove_red_eye_sharp,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TermsConditionWidget(),
            const SizedBox(height: 42),
            CusttomButtom(onPressed: () {}, text: 'إنشاء حساب جديد'),
            const SizedBox(height: 38),
            haveAnAccount(
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
