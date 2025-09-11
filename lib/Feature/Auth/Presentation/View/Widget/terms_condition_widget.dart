import 'package:flutter/material.dart';
import 'package:fruit_hup/Core/utils/app_color.dart';
import 'package:fruit_hup/Core/utils/app_text_styles.dart';
import 'package:fruit_hup/Feature/Auth/Presentation/View/Widget/custom_check_box.dart';

class TermsConditionWidget extends StatefulWidget {
  const TermsConditionWidget({super.key, required this.onChange});
  final ValueChanged<bool> onChange;
  @override
  State<TermsConditionWidget> createState() => _TermsConditionWidgetState();
}

class _TermsConditionWidgetState extends State<TermsConditionWidget> {
  bool isTermsCondition = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isTermsCondition,
          onChanged: (value) {
            setState(() {
              isTermsCondition = value;
            });
            widget.onChange(value);
          },
        ),
        SizedBox(width: 16),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: AppText.semiBold13,
                ),
                TextSpan(
                  text: 'الشروط والأحكام الخاصة بنا',
                  style: AppText.semiBold13.copyWith(
                    color: appColor.KLightprimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
