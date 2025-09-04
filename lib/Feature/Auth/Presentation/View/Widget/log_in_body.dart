import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/Widget/custom_button.dart';
import 'package:fruit_hup/Core/Widget/custom_text_form_field.dart';
import 'package:fruit_hup/Core/utils/app_icon.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/custom_button_social.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/custom_divider.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/dont_have_an_account_text.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/sin_up.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                 const SizedBox(height: 24),
                 const CustomTextFormField(
                    hint: 'البريد الإلكتروني',
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
                const  SizedBox(height: 33),
                  //Navigate to Home
                  CusttomButtom(onPressed: () {}, text: "تسجيل الدخول"),
                 const SizedBox(height: 33),
                const  CustomDivider(),
                 const SizedBox(height: 16),
                  //Navigat to SignUp
                  DontHaveAnAccountText(onPress: () {
                    Navigator.pushNamed(context, SinUp.routeName);
                  }),
                 const SizedBox(height: 33),
                  //Navigate to Social Media Auth
                  CustomButtonSocial(
                    image: Assets.imageGoogleIcon,
                    text: 'تسجيل بواسطة جوجل',
                    onPressed: () {},
                  ),
                const  SizedBox(height: 16),
                  CustomButtonSocial(
                    image: Assets.imageFaceBookIcon,
                    text: 'تسجيل بواسطة فيسبوك',
                    onPressed: () {},
                  ),
               const   SizedBox(height: 16),
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
    );
  }
}
